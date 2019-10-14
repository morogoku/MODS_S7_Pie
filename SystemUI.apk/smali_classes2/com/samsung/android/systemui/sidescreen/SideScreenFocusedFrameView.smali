.class public Lcom/samsung/android/systemui/sidescreen/SideScreenFocusedFrameView;
.super Lcom/android/systemui/stackdivider/FocusedFrameView;
.source "SideScreenFocusedFrameView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/stackdivider/FocusedFrameView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected isAllowedDockSide(I)Z
    .locals 1

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected isPrimaryFocused(I)Z
    .locals 1

    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected rawInitDockSide()V
    .locals 0

    return-void
.end method
