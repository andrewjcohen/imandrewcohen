---
title: Prototyping Animations in Keynote
date: 2014-10-13
tags: Design, UX, Product Design
---

One look on Dribbble, and you’ll notice the abundance of animations that emphasize interaction. The increasing number of devices, screens, and use cases have required designers to think of new ways to improve the usability of applications. Animation can be a tool for solving these problems. A simple effect can help a user transition between screens, and understand a cohesive experience across an ecosystem of devices. A well-designed animation guides users to the most crucial areas of the product, and is just plain delightful!

I have always found myself envious of those who are able to bring life to their interfaces in After Effects. The detail and delight made me wish I could harness the clunky interface, but it never worked out for me. Recently, there has been an influx of applications that focus on being simplified tools that allow us to get the job done. Programs like Sketch, Pixate, Invision, and Flinto are a few examples. We’re no longer stuck having to use the sledgehammer when a ball-peen hammer is needed. We can choose the tools that fit our workflow best and allow us to get tasks done faster.

### Really Keynote?
This brings me to my new favorite animation program, Keynote. Yes Keynote, the prettier Apple version of PowerPoint. Keynote has been spoken about in the past as a great tool for creating wireframes and prototypes, but not much for animation. I love Keynote because it’s fast, free, easy to learn, and it works.

![Ohh Pretty](http://images.thoughtbot.com/animation-in-keynote/system-select.gif)

Recently Andrew Haskin of Frog Design recreated [Google’s Material Design Video in Keynote](http://designmind.frogdesign.com/blog/google-s-material-design-video-recreated-in-keynote.html). I was impressed with his ability to recreate complex animations in what seemed like a very simple program. Using his Keynote file as a guideline, I dug in to the mechanics and mastered animating in Keynote in roughly an hour.

### Keep it Simple
Animation and motion can be very daunting. Many designers have a background that has made us very familiar with static layouts. For those first approaching animation, it’s easy to get overwhelmed. The most basic tool in your belt is the most powerful one, your pen. Start simple by sketching out ideas around your beginning state, your end state, and how you think content should animate in a logical fashion.

It is easy to go overboard with animation — think about the Flash days. Remember animation is a tool to create a seamless experience, not the experience itself. Look for ways you can guide users’ eyes to key interaction points or showcase the most important aspects of the interface. In the end, don’t overcomplicate to make things pretty.

### Get Set Up
So your animation is planned, and you’re ready to push pixels.

1. Fire up Keynote and create a blank slideshow.
2. In the top right, select the document tab and change your slide size to the appropriate canvas necessary.
3. Change your presentation type to be self-playing and remove the delays on transitions and builds. This will make sure everything flows seamlessly between slides.
![Document Tab](http://images.thoughtbot.com/animation-in-keynote/document-tab.png)
4. After that, make sure the Build Order palette is open, which can be found at view > show build order. Alongside the Animate palette, the build order palette is where you’ll spend the bulk of your time.
5. Hold on one second, though! Before you can animate, you need to export your assets from your program of choice. Anything that you plan to move around independently of other objects needs to be a slice. Keep in mind that sometimes it is easier to build your element inside of Keynote.
6. Once you have your assets, drag them into Keynote and rebuild your layout.

### Lets Animate Something Basic
Now you’re ready to animate and should have a good idea of what you’re trying to achieve.

1. Select the first object you want animated and head to the Animate palette in the top right. Keynote was created for slideshows, so the palette will reflect that with three options. When hunting down a specific effect, I find it helps to think of my animation as three key steps: building in (fade in), do something (action), building out (fade out).
![Animate Tab](http://images.thoughtbot.com/animation-in-keynote/animate-tab.png)
2. Select Add an Effect and find the desired animation you’re looking for. Tweak your effect by selecting the duration you want, the acceleration, and other options. Once done, click add effect.
3. The effect shows up in your build order palette, which is the order animations are triggered at.
![Build Order](http://images.thoughtbot.com/animation-in-keynote/build-order.png)
4. Select an effect in the build order palette. You can make it so the effect triggers at the same time or after the one before it. This allows you to chain together multiple animations in one slide. If you want something a little more drastic, let’s talk Magic Move.

### Magic Move
Magic Move is probably the most effective and well... magical thing about animating in Keynote. It is a transition effect that animates objects from one slide to their positions on the next. It will then fill the gaps on the things you want by moving, fading, scaling, etc. So let’s give it a whirl.

1. Take the slide you currently have and duplicate it. One of the slides will exist as the first state and the second as the final state. You want to make sure the objects you want to change exist in both slides.
2. Go back to the first slide, select the animate tab, click add a transition, and select magic move.
![Magic Move](http://images.thoughtbot.com/animation-in-keynote/magic-move.png)
3. Change the properties as you see fit, but leave “Move by object” as is. Also, make sure start transition automatically is selected.
4. Now go to the second slide and move your objects around as you see fit. If you want something to fade in, (inserted comma) change the opacity from 0 to 100. If you want it to move, change the position to where you want it to end up. Magic move will take care of the rest.
5. Preview your animation by selecting Preview on the first slide in the Animate tab.
6. Tweak and refine until you’ve figured out the exact animation you’re looking for.

### Combine Them
Now that you’ve done basic animation effects on a single slide and played with magic move by combining two slides, you can move into animating your entire experience. There are tons of ways to build animations in Keynote, and there is no wrong way to do it. A great rule of thumb, is to try and link as many animations for a single screen in the build order palette. Then, when it comes to an entirely new screen, you create a new slide and continue from there. Magic Move is a great solution for a large amount of the transitions out there, but it is easy to go overboard. Fine tuning each step of the animation through build order and timing offers the most control.

### Closing
Once you’re done, you can easily export your animation to a Quicktime .mov for sharing. In the end, it’s all about experimenting and seeing what works for you. Keynote wasn’t built for prototyping animation, so at times you’ll see some shortcomings, but overall it’s simple, powerful, and fast.

Lastly, I’ve attached an animation I recently did for our client, [Martial Codex]. Keynote has helped me convey the animations to our developers as we design and build out the Android app. Take a look, mess with my file, and you’ll quickly see it’s not that hard to get rolling in Keynote.

[Download Martial Codex Animation](https://www.dropbox.com/s/qk7ku7s0fnrkkbm/MartialCodex-system-select.zip?dl=0)

[Martial Codex]: https://www.martialcodex.com

Originally Published on [Giant Robots Smashing into Other Giant Robots](http://robots.thoughtbot.com/animating-with-keynote)
