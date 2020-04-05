# Face Tracking using SMC (particle filter) 
## Intro

In this project faces were tracked using a color based particle filter. The input to the algorithm is a box drawn around the face. This box was acquired using the Viola-Jones algorithm (2001). From this box a color histogram is extracted. The face is then tracked using a particle filter, where the weighted mean of the location of the particles is the center of the face. 

To track the movements of the face, the particles are first propagated. Each particle is then given a weight according to how similar the color in the neighbourhood of the particle is to the color of the face. The particles are then sampled from this weight distribution. The mean of the sampled particles is taken to get an estimate of the position of the face.

By updating the color histogram of the face over the progression of the movie, changes in the lighting conditions can be handled without losing track of the face. This can be seen in the first video below.

The project builds on the work of Nummiaro (2003) as well as Wang et al. (2019). More information can be found in the report and in the references section below.

Sounds fun? It was fun to implement. Read the entire report [here](https://github.com/jacobmalmberg/Face-tracking-using-SMC/blob/master/report_ft.pdf). This project was carried out together with my project partner Alexandra Hotti.

## Results

In the gifs, the red circles are the particles and the green box is the mean state estimation. To keep the size of the landing page small, not all results are shown. More results can be found [here](https://github.com/jacobmalmberg/Face-tracking-using-SMC/tree/master/gifs).


### Fast sideways moment, changing lighting conditions and moving in/out of the frame!

<p align="center">
<img src="https://github.com/jacobmalmberg/Face-tracking-using-SMC/blob/master/gifs/occlusion.gif" width = "60%"/>
</p>

### Moving towards as well as away from the camera!

<p align="center">
<img src="https://github.com/jacobmalmberg/Face-tracking-using-SMC/blob/master/gifs/size-change-blue-background.gif" width = "60%"/>
</p>

### Moving up and down
<p align="center">
<img src="https://github.com/jacobmalmberg/Face-tracking-using-SMC/blob/master/gifs/up_and_down_movement.gif" width = "60%"/>
</p>


## References
Nummiaro, K., Koller-Meier, E., and Van Gool, L. An
adaptive color-based particle filter. Image and vision
computing, 21(1):99–110, 2003.

Viola, P., Jones, M., et al. Robust real-time object detection. International journal of computer vision, 4(34-47):
4, 2001.

Wang, T., Wang, W., Liu, H., and Li, T. Research on a
face real-time tracking algorithm based on particle filter
multi-feature fusion. Sensors, 19(5):1245, 2019.

