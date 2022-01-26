if treff=0
{
    image_xscale-=0.04
    image_yscale=image_xscale
    if image_xscale<=0
    {
        instance_destroy()
    }
}
if treff=1
{
    image_alpha-=0.05
    if image_alpha<=0
    {
        instance_destroy()
    }
}
