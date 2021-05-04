global.roomborder = 0

with (DBobject_lite) {
///Configuration - Make tweaks here


    /////////////////////////////////////////////////
    //   ULTIMATE SEAMLESS BACKGROUND GENERATOR    //
    // --------------------------------------------//
    // STARS, NEBULAS, CLOUDS, DONUTS, YOU NAME IT //
    /////////////////////////////////////////////////

    ////////////////////////////////////////////////////////////////////////////////////////
    //   LITE VERSION, FOR ALL FEATURES GET THE FULL VERSION, IT DOESN'T COST THAT MUCH!  //
    // FULL VERSION AT: https://marketplace.yoyogames.com/assets/1664/dynamic-backgrounds //
    ////////////////////////////////////////////////////////////////////////////////////////
    
// PRE-USAGE:

// 1.) You need to define a global variable called global.roomborder before you start using this, if you don't want to use the seamless wrapping just put it to zero, but BEFORE you use this (in an initiation room like in the example, called "init" here).
// =========================================================================================================================================================================================================================================|

// 2.) Use square sprites WITH CENTERED ORIGINS!!!! for best results. You will also need a background color, for nebula/stars preferably black!
// ============================================================================================================================================|

// 3.) For the parallax, try to use reasonable values as proposed at that section below.
// =====================================================================================|

// 4.) You need AT LEAST one view, you CANNOT use this without views, there will be another simplified version for that included at some point.
// =====================================================================================================================|

// 5.) This background generator fully supports seamlessly wrapping rooms with centered player, see included example.
// ==================================================================================================================|

// 6.) To use this with different configurations for multiple rooms, copy this ENTIRE (yes all of it) creation code into the creation code of the instance
//     of this object in said room and then change/tweak things over there. COPY THE ENTIRE THING, or things will break. Examples included, but they still use the old config so they are partially incomplete (but work).
// ======================================================================================================================================================================================================================|

// 7.) At the very bottom there is a trouble-shooting section, you can adjust (technical) things there that might cause issues.
// ===========================================================================================================================|

// 8.) This is the lite version, it doesn't have advanced mode, so no zooming, per-layer tweaking, faders, surface support, and also lacks certain randomization options, such as random color and alpha.
//     If you really want/need these features, get the full version, it's extremely powerful and offers you a lot more control. Get it at: https://marketplace.yoyogames.com/assets/1664/dynamic-backgrounds
// ===========================================================================================================================|

    
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////



    /////////////////////////////
    // EZ MODE - QUICK 'N EASY //
    /////////////////////////////

    /////////////////////////////
    

// USAGE:

// In the SECOND "for" loop below, you need to change the sprites in the "choose" function to your own, you can add as many as you want, or just one if you want a single star/sprite variety.
// EXAMPLE: choose(star1) or choose(star1,star1,star1...) - all layers have same sprite; choose(star1,star2) - layers alternate between the two sprites, this is PER layer, not per star.
// The amount of layers has NO IMPACT on performance, maximum -useful- value will be equal to the amount of stars, where every star has its own movement plane.

// [backg_color=c_black] - FULL VERSION ONLY - just set the background color in the room.
// [stars=250] - This is the amount of stars/sprites that will be in the view at once, this number will be split over the amount of layers.
// [layers=10] - This is the number of distinct layers. Each layer can have distinct properties as you will see later.
// [skip_layers=0] - FULL VERSION ONLY
//
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//-parameters-\\

    stars         =      100;
    layers        =      10;


//-loops-\\
//DON'T TOUCH

    for(i=0;i<layers+1;i++){startypes[i]=-1;} //array initialization, every "-1 layer" will not be calculated or drawn.


//CHANGE THIS - choose(sprite1,sprite2...)

    for(i=0;i<layers+1;i++){startypes[i]=choose(nebula3,nebula4,nebula2,nebula);}
//for(i=0;i<layers+1;i++){startypes[i]=choose(nebula2,nebula,nebula3,nebula4);}
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////





// Below is the parallax setup. Do -NOT- touch the nested "for" loop at all, just change the value for "strength" and "fieldspeed".

// [strength=50] - Increase "strength" for more contrast between the layers. Negative values make no difference. 0 means no parallax. 100 means that the first and the last layer will have the maximum difference possible (back layer will stand still and front layer will move at object layer speed) stay between 0 - 100.
// [fieldspeed=100] - Decrease "fieldspeed" to SLOW DOWN the starfield, it basically offsets the parallax factors. Negative values make no difference. try to stay around 0 - 100
// NOTICE: This section has been rewritten, no more weird behavior, strength and fieldspeed both get clamped at 0 and 100 to prevent weird stuff from happening.

// With the "for" loop below, the first layer will always move directly with the view, the last layer will always move the slowest of all.
// If you want different parallax behavior, use the manual override at the advanced section below.
//
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//CHANGE THESE

    strength       =      50;
    fieldspeed     =      10;

    
//DON'T TOUCH

for(j=0;j<layers;j++){pf[layers-j-1]=1+(((10*median(0,strength,100)*(j/1000)))/layers)-(median(0,fieldspeed,100)/100);if (pf[layers-j-1]>1) {pf[layers-j-1]=1};if (pf[layers-j-1]<0) {pf[layers-j-1]=0};}

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////





// Below are some starfield-wide properties, these go for the entire starfield, ALL layers, for more control see the "advanced tweaks" part below.

// [scale=1] - Scale all stars, scale 1 is same as the sprite's size.
// [rotation=0] - FULL VERSION ONLY
// [color=c_white] - FULL VERSION ONLY
//
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//-parameters-\\

    starscale      =       1;

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////





// Below are the randomization toggles, they randomize certain aspects of ALL layers, for more control see the "advanced tweaks" part below.

// [randomscale=true,upperbound=2,lowerbound=0.5] - set random scale to "1" to enable it. You can set the bounds with "upperbound" and "lowerbound", which determine the highest and lowest possible star size.
// [randomrotation=false] - Randomly rotates each star.
// [iirandom=true] - Randomizes image_index per star. Useful if you have animating stars and don't want all of them to blink at the same time.
// [randomalpha=false,upperalpha=0,loweralpha=1] - FULL VERSION ONLY
// [randomcolor=false] - FULL VERSION ONLY
// [blendmode=0] - FULL VERSION ONLY
//
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//-parameters-\\

    randomscale     =      true;
    upperbound      =      2;
    lowerbound      =      0.5;
    
    randomrotation  =      true;
    
    iirandom        =      true;

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////




//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//INITIALIZATION OF STARFIELD, DON'T TOUCH OR YOUR FINGERS WILL BURN HARD AND FALL OFF YOUR HAND, JUST READ THE COMMENTS TO UNDERSTAND WHAT HAPPENS //
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// COMMENTING AVAILABLE IN FULL VERSION ONLY //

    xchange=0;
    ychange=0;
    firstrun=1;
    pvx=__view_get( e__VW.XView, 0 );
    pvy=__view_get( e__VW.YView, 0 );
    timer=2;
    firstgenerated=0;
    initstarcount=stars



    startval_a[0]=0
    for(w=0;w<layers;w++){startval_a[w+1]=startval_a[w]+round((stars/layers));}
    startval_a[layers]=stars

    for(j=0;j<layers;j++){realweight[j]=1;}

    random_set_seed(irandom(1000));

    for(j=0;j<layers;j++)
    {
        for(i=floor(j*((stars)/layers));i<floor((j+1)*((stars)/layers));i++) 
        {
            h[j] = sprite_get_height(startypes[j])
            w[j] = sprite_get_width(startypes[j])
            
            randscale[i]=(lowerbound+random(upperbound-lowerbound))*randomscale*starscale+!randomscale*starscale
            rot[i]=randomrotation*irandom(360)
            iistart[i]=(iirandom*irandom(sprite_get_number(startypes[j])))+!iirandom*image_index            
            
            hborder[i]=h[j]*randscale[i]*sqrt(2) 
            wborder[i]=w[j]*randscale[i]*sqrt(2)
            wborder_o[i]=wborder[i] 
            hborder_o[i]=hborder[i] 
    
            prevxview[i]=0
            prevyview[i]=0
            xview_b[i]=0
            yview_b[i]=0
            wview_b[i]=0
            hview_b[i]=0
            starx[i]=0
            stary[i]=0
        }
    }

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


    ////////////////////////////////////
    // TROUBLE SHOOTING AND FAQ STUFF //
    ////////////////////////////////////

    ////////////////////////////////////
    
    

//FAQ will expand once people start using this resource more often, then when people run into trouble I can find out the issues and post them here.

//----FAQ----//

// [Q:] The stars twitch oddly and an ugly horizontal line appears in the view that moves around
// [A:] You need to turn v-sync on if you see this (Global game settings -> windows), it usually happens with views that have a smaller resolution than your monitor.

// [Q:] Things are slowing down....
// [A:] It's very simple: lower starcount == more performance, no other factors play much of a role (aside from sprite resolution). Reduce starcount if things are slow!

// [Q:] I have trouble implementing this correctly into my game.
// [A:] Please PM me with all details and problems and I will work it out (and include the problem/answer in the FAQ).

// [Q:] Why does this seem to lack features?
// [A:] This is a lite version, so that people who are not willing to pay can enjoy the product too. Perhaps it convinces them (and you!) to buy the full version, to support my work.

//-END OF FAQ-//



//Special trouble-shooting vars - IF EVERYTHING WORKS, PLEASE DO NOT TOUCH!

    timer=2                 //increase this if the first stars do not get drawn, decrease if you start seeing gaps, generally 2 is the best option though.
    bgdebug=0               //debug module, feel free to turn on/off, variables to watch can be added in the draw event at the bottom, but there are some convenient ones there already.
    show_debug_overlay(0)   //inbuilt fps monitoring and such. This is actually coupled to the variable above (toggle with f12), only override when necessary.



}
