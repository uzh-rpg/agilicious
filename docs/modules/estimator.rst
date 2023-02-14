##########
Estimators
##########

The :code:`estimator` module group is implemented in :code:`agilib/src/estimator`. There are different types of estimator, depending on the information they use:

- :code:`ekf`: An EKF propagated with a constant acceleration model and updated with 6-DoF pose and IMU measurements.
- :code:`ekf_imu`: An EKF propagated with IMU measurements and updated with 6-DoF pose measurements.
- :code:`feedthrough`: The estimation is provided completely from an external estimator.
- :code:`mock_vio`: A mock estimator that corrupts a ground-truth estimates with noise and bias to simulate real-world properties.

