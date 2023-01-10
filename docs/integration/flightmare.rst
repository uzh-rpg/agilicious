######################
Flightmare Integration
######################

Flightmare is composed of two main components: a configurable rendering engine built on Unity 
and a flexible physics engine for dynamics simulation. Those two components are totally decoupled 
and can run independently from each other. Hence, we can combine **Flightmare** with **Agilicious**
for **Hardware-in-the-loop (HITL) simulation**.
HITL simulation allows for flying a physical quadrotor in the real-world while observing virtual photorealistic environments.


Download Flightmare
~~~~~~~~~~~~~~~~~~~

Clone the code::

  git clone git@github.com:uzh-rpg/flightmare.git

Ignore the Flightmare ROS examples::

  touch flightmare/flightros/CATKIN_IGNORE  

Download Flightmare Unity Standalone::

  curl --show-error --progress-bar --location "https://github.com/uzh-rpg/flightmare/releases/download/0.0.5/RPG_Flightmare.tar.xz" | tar Jxf - -C flightmare/flightrender/ --strip 1


Hardware-in-the-loop Simulation
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Now, assume you have both Agilicious and Flightmare downloaded. 
You need to create a new ros package that combines both.
We provides some hints on how to use Unity rendering here. 
For details, you can check this `example <https://github.com/uzh-rpg/flightmare/blob/master/flightros/src/camera/camera.cpp>`_.


Set up Unity rendering. Example code::

    // Flightmare Quadrotor and Unity Camera
    unity_quad_ = std::make_shared<flightlib::Quadrotor>();
    flightlib::Vector<3> quad_size(0.5, 0.5, 0.2);
    unity_quad_->setSize(quad_size);

    unity_camera_ = std::make_shared<flightlib::RGBCamera>();
    flightlib::Vector<3> B_r_BC(0.0, 0.0, 0.3);
    Scalar pitch_angle_deg = 0.0;
    flightlib::Matrix<3, 3> R_BC =
      (Eigen::AngleAxisf(0.0 * M_PI, Eigen::Vector3f::UnitX()) *
       Eigen::AngleAxisf(-pitch_angle_deg / 180.0 * M_PI,
                         Eigen::Vector3f::UnitY()) *
       Eigen::AngleAxisf(-0.5 * M_PI, Eigen::Vector3f::UnitZ()))
        .toRotationMatrix();
    double hor_fov_radians = (M_PI * (110 / 180.0));
    double width = 640.0;
    double height = 480.0;
    // Recalculate here: https://themetalmuncher.github.io/fov-calc/;
    double vertical_fov =
      2. * std::atan(std::tan(hor_fov_radians / 2) * height / width);
    vertical_fov = (vertical_fov / M_PI) * 180.0;  // convert back to degrees
    std::cout << "Vertical FoV is " << vertical_fov << std::endl;
    unity_camera_->setFOV(vertical_fov);
    unity_camera_->setWidth(width);
    unity_camera_->setHeight(height);
    unity_camera_->setRelPose(B_r_BC, R_BC);
    unity_quad_->addRGBCamera(unity_camera_);

    // Connect Unity
    setUnity(unity_render_);
    connectUnity();

Set Unity::

  bool setUnity(const bool render) {
    unity_render_ = render;
    if (unity_render_ && unity_bridge_ == nullptr) {
      unity_bridge_ = flightlib::UnityBridge::getInstance();
      unity_bridge_->addQuadrotor(unity_quad_);
      //
      if (!loadRacetrack(pnh_)) {
        ROS_WARN("[%s] No race track is specified.", pnh_.getNamespace().c_str());
      } else {
      };

      ROS_INFO("[%s] Unity Bridge is created.", pnh_.getNamespace().c_str());
      return true;
    } else {
      return false;
    }
  }

Connect Unity::

  bool connectUnity() {
    if (!unity_render_ || unity_bridge_ == nullptr) return false;
    unity_ready_ = unity_bridge_->connectUnity(unity_scene_id_);
    return unity_ready_;
  }


The images are rendered based the current quadrotor states. 
Below are example codes for publishing images. 
Publish images::

  void publishImages(const QuadState &state) {
    sensor_msgs::ImagePtr rgb_msg;
    frame_id_ += 1;
    // render the frame
    flightlib::QuadState unity_quad_state;
    unity_quad_state.setZero();
    unity_quad_state.p = state.p.cast<flightlib::Scalar>();
    unity_quad_state.qx = state.qx.cast<flightlib::Scalar>();
    unity_quad_->setState(unity_quad_state);
    // Warning, delay
    unity_bridge_->getRender(frame_id_);
    unity_bridge_->handleOutput(frame_id_);
    cv::Mat img;
    unity_camera_->getRGBImage(img);
    rgb_msg = cv_bridge::CvImage(std_msgs::Header(), "bgr8", img).toImageMsg();
    rgb_msg->header.stamp = ros::Time(state.t);
    image_pub_.publish(rgb_msg);
  }



