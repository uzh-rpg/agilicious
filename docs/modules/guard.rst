#########
The Guard
#########

The guard is an :code:`agilib` module implemented in :code:`agilib/src/guard/`.
The purpose of the guard is to keep the drone safe when things go wrong. It does so by running a completely separate pipeline, with separate sampler, estimator and controller running in parallel to the main pipeline. If something happens (for example, the controller crashes, the main estimator diverges, and the drone flies out of a pre-defined 3D volume), the guard triggers automatically and brings the drone back to safety. The guard can also be triggered manually, if the user observes undefined/dangerous behaviour.


