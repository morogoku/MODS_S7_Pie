.class public Lcom/samsung/android/knox/lockscreen/InvisibleOverlay;
.super Landroid/widget/LinearLayout;
.source "InvisibleOverlay.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LSO_InvisibleOverlay"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mLSOView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const-string v0, "LSO_InvisibleOverlay"

    const-string v1, "InvisibleOverlay(context)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/samsung/android/knox/lockscreen/InvisibleOverlay;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/lockscreen/InvisibleOverlay;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;

    iget-object v1, p0, Lcom/samsung/android/knox/lockscreen/InvisibleOverlay;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/knox/lockscreen/InvisibleOverlay;->mLSOView:Landroid/view/View;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v0, "LSO_InvisibleOverlay"

    const-string v1, "InvisibleOverlay(context,attrs)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/samsung/android/knox/lockscreen/InvisibleOverlay;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/lockscreen/InvisibleOverlay;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;

    iget-object v1, p0, Lcom/samsung/android/knox/lockscreen/InvisibleOverlay;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/knox/lockscreen/InvisibleOverlay;->mLSOView:Landroid/view/View;

    return-void
.end method

.method private getFrameLayout()Landroid/widget/FrameLayout;
    .registers 7

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/knox/lockscreen/InvisibleOverlay;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    :goto_5
    if-eqz v1, :cond_53

    if-nez v0, :cond_53

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/widget/FrameLayout;

    invoke-virtual {v3, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_34

    const-string v3, "LSO_InvisibleOverlay"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getFrameLayout() : Attaching LockscreenOverlayView to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    check-cast v0, Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    goto :goto_52

    :cond_34
    const-string v3, "LSO_InvisibleOverlay"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getFrameLayout() : Cannot attach FrameLayout. find parent view "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    :goto_52
    goto :goto_5

    :cond_53
    return-object v0
.end method


# virtual methods
.method public changeVisibility(I)V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/InvisibleOverlay;->mLSOView:Landroid/view/View;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/InvisibleOverlay;->mLSOView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_9
    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 5

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    invoke-direct {p0}, Lcom/samsung/android/knox/lockscreen/InvisibleOverlay;->getFrameLayout()Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_24

    :try_start_9
    iget-object v1, p0, Lcom/samsung/android/knox/lockscreen/InvisibleOverlay;->mLSOView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_e} :catch_f

    goto :goto_18

    :catch_f
    move-exception v1

    const-string v2, "LSO_InvisibleOverlay"

    const-string/jumbo v3, "onAttachedToWindow() ignore Exception: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_18
    iget-object v1, p0, Lcom/samsung/android/knox/lockscreen/InvisibleOverlay;->mLSOView:Landroid/view/View;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2c

    :cond_24
    const-string v1, "LSO_InvisibleOverlay"

    const-string/jumbo v2, "onAttachedToWindow() : cannot find parentview for LSO. "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2c
    return-void
.end method
