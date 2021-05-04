/// @description Some calculations before drawing  - DO NOT TOUCH!
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//Calculations for the draw event, these are not crucial to put in the draw event itself, so this is a good way to save some performance.
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////
//WARNING, only modify things in here if you know what you are doing//
//////////////////////////////////////////////////////////////////////

// COMMENTING AVAILABLE IN FULL VERSION ONLY //

timer=timer-1;
if (timer<0) {timer=0;}
if timer=0 && (!(pvx==__view_get( e__VW.XView, 0 )) || !(pvy==__view_get( e__VW.YView, 0 ))) {firstrun=0;}
pvx=__view_get( e__VW.XView, 0 );
pvy=__view_get( e__VW.YView, 0 );

for(j=0;j<layers;j++)
{
    for(i=(startval_a[j]);i<(startval_a[j+1]);i++) 
    {
        if !(startypes[j]==-1)
        {
            xchange=random(300+w[j]*2)
            ychange=random(300+h[j]*2)
            
            if (firstgenerated<stars-1 && timer=0)
            {
            starx[i]=-xview_b[i]*pf[j]+xview_b[i]+random(wview_b[i])
            stary[i]=-yview_b[i]*pf[j]+yview_b[i]+random(hview_b[i])
            firstgenerated=firstgenerated+1;
            }    
        }
    }
}

