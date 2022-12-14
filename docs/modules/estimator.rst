##########
Estimators
##########

The :code:`estimator` module group is implemented in :code:`agilib/src/estimator`. There are different types of estimator, depending on the information they use:

- :code:`ekf`: Standard EKF where a pure integration step is used for the prior propagation.
- :code:`ekf_imu`: Standard EKF where the IMU is used for the prior propagation.
- :code:`mock_vio`: An estimator that introduces drift, jumps and noise to simulate a VIO pipeline, for testing purposes.
- :code:`feedthrough`: The estimation is provided completely from an external estimator.
