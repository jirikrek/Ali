/// @description Drawing the backgrounds - DO NOT TOUCH

//////////////////////////////////////////////////////////////////////
//WARNING, only modify things in here if you know what you are doing//
//////////////////////////////////////////////////////////////////////

// COMMENTING AVAILABLE IN FULL VERSION ONLY //

for(j=0;j<layers;j++)
{
    for(i=floor(j*((stars)/layers));i<floor((j+1)*((stars)/layers));i++)
        {
                if !(startypes[j]==-1)
                {      
                    wview_b[i]=(__view_get( e__VW.WView, 0 )+2*wborder[i]+2*wborder[i]*pf[j])
                    hview_b[i]=(__view_get( e__VW.HView, 0 )+2*hborder[i]+2*hborder[i]*pf[j])
                    xview_b[i]=(__view_get( e__VW.XView, 0 )-wborder[i]-wborder[i]*pf[j])
                    yview_b[i]=(__view_get( e__VW.YView, 0 )-hborder[i]-hborder[i]*pf[j])
                    
                    if (xview_b[i]-prevxview[i]) < (-0.5*room_width) {starx[i]=starx[i]-wwrap+wwrap*pf[j];}
                    if (xview_b[i]-prevxview[i]) > (0.5*room_width) {starx[i]=starx[i]+wwrap-wwrap*pf[j];}
                    if (yview_b[i]-prevyview[i]) < (-0.5*room_height) {stary[i]=stary[i]-hwrap+hwrap*pf[j];}
                    if (yview_b[i]-prevyview[i]) > (0.5*room_height) {stary[i]=stary[i]+hwrap-hwrap*pf[j];}
                    
                    if (firstrun==0)
                    {
                        if xview_b[i]>prevxview[i] 
                            {
                            if ((starx[i])<(-xview_b[i]*pf[j]+xview_b[i])) && !(abs(xview_b[0]-prevxview[0])>0.5*room_width) {starx[i]=(-xview_b[i]*pf[j]+wview_b[i]+xview_b[i]+random(xchange));stary[i]=-yview_b[i]*pf[j]+yview_b[i]+random(hview_b[i])};
                            }
                            
                        if xview_b[i]<prevxview[i]
                            {
                            if ((starx[i])>(-xview_b[i]*pf[j]+xview_b[i]+wview_b[i])) && !(abs(xview_b[0]-prevxview[0])>0.5*room_width) {starx[i]=(-xview_b[i]*pf[j]+xview_b[i]-random(xchange));stary[i]=-yview_b[i]*pf[j]+yview_b[i]+random(hview_b[i])};
                            }
                            
                        if yview_b[i]>prevyview[i]
                            {
                            if (stary[i]<(-yview_b[i]*pf[j]+yview_b[i])) && !(abs(yview_b[0]-prevyview[0])>0.5*room_height) {stary[i]=(-yview_b[i]*pf[j]+hview_b[i]+yview_b[i]+random(ychange));starx[i]=-xview_b[i]*pf[j]+xview_b[i]+random(wview_b[i])};
                            }
                            
                        if yview_b[i]<prevyview[i] 
                            {
                            if (stary[i]>(-yview_b[i]*pf[j]+yview_b[i]+hview_b[i])) && !(abs(yview_b[0]-prevyview[0])>0.5*room_height) {stary[i]=(-yview_b[i]*pf[j]+yview_b[i]-random(ychange));starx[i]=-xview_b[i]*pf[j]+xview_b[i]+random(wview_b[i])};
                            }
                    }
                draw_sprite_ext(startypes[j],iistart[i]+image_index,xview_b[i]*pf[j]+starx[i],yview_b[i]*pf[j]+stary[i],randscale[i],randscale[i],rot[i],c_white,1);
                }
        prevxview[i]=xview_b[i]
        prevyview[i]=yview_b[i]
        }
}


