.class Lcom/android/server/power/ShutdownThread$4;
.super Landroid/app/Dialog;
.source "ShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/ShutdownThread;->createConfirmDialog(Landroid/content/Context;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$ctx:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;ILandroid/content/Context;)V
    .registers 4

    iput-object p3, p0, Lcom/android/server/power/ShutdownThread$4;->val$ctx:Landroid/content/Context;

    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_17

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_1c

    goto :goto_17

    :pswitch_f
    # invokes: Lcom/android/server/power/ShutdownThread;->animateDismiss()V
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$3500()V

    return v1

    :pswitch_13
    # invokes: Lcom/android/server/power/ShutdownThread;->animateDismiss()V
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$3500()V

    return v1

    :cond_17
    :goto_17
    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0

    :pswitch_data_1c
    .packed-switch 0x3
        :pswitch_13
        :pswitch_f
    .end packed-switch
.end method

.method public init()Landroid/app/Dialog;
    .registers 4

    invoke-virtual {p0}, Lcom/android/server/power/ShutdownThread$4;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v2, 0x80580

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    const/16 v1, 0x96b

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {p0}, Lcom/android/server/power/ShutdownThread$4;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x10000

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    invoke-virtual {p0}, Lcom/android/server/power/ShutdownThread$4;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {p0}, Lcom/android/server/power/ShutdownThread$4;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/Window;->setWindowAnimations(I)V

    return-object p0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 16

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/server/power/ShutdownThread$4;->val$ctx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    # getter for: Lcom/android/server/power/ShutdownThread;->sSupportBlackWhiteTheme:Z
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$1400()Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_9b

    # getter for: Lcom/android/server/power/ShutdownThread;->mIsSupportedBlur:Z
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$1500()Z

    move-result v1

    if-eqz v1, :cond_9b

    iget-object v1, p0, Lcom/android/server/power/ShutdownThread$4;->val$ctx:Landroid/content/Context;

    # invokes: Lcom/android/server/power/ShutdownThread;->captureScreen(Landroid/content/Context;)Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/android/server/power/ShutdownThread;->access$1600(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    if-ne v5, v3, :cond_38

    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-direct {v5, v4, v4, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_49

    :cond_38
    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-direct {v5, v4, v4, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_49
    const/4 v6, 0x3

    new-array v6, v6, [F

    invoke-static {v1, v5}, Lcom/android/server/power/ShutdownThread$ExtractColor;->getColorHSV(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)[F

    move-result-object v6

    if-nez v6, :cond_56

    # setter for: Lcom/android/server/power/ShutdownThread;->sIsNeedWhiteTheme:Z
    invoke-static {v4}, Lcom/android/server/power/ShutdownThread;->access$1702(Z)Z

    goto :goto_9b

    :cond_56
    const-string v7, "ShutdownThread"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Whole Area Hue="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v9, v6, v4

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v9, ", Saturation="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v9, v6, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v9, ", Brightness="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v9, v6, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    aget v7, v6, v3

    const v8, 0x3e99999a    # 0.3f

    cmpg-float v7, v7, v8

    if-gez v7, :cond_98

    aget v7, v6, v2

    const v8, 0x3f6147ae    # 0.88f

    cmpl-float v7, v7, v8

    if-ltz v7, :cond_98

    # setter for: Lcom/android/server/power/ShutdownThread;->sIsNeedWhiteTheme:Z
    invoke-static {v3}, Lcom/android/server/power/ShutdownThread;->access$1702(Z)Z

    goto :goto_9b

    :cond_98
    # setter for: Lcom/android/server/power/ShutdownThread;->sIsNeedWhiteTheme:Z
    invoke-static {v4}, Lcom/android/server/power/ShutdownThread;->access$1702(Z)Z

    :cond_9b
    :goto_9b
    new-instance v1, Landroid/widget/RelativeLayout;

    iget-object v5, p0, Lcom/android/server/power/ShutdownThread$4;->val$ctx:Landroid/content/Context;

    invoke-direct {v1, v5}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/android/server/power/ShutdownThread;->rootView:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/android/server/power/ShutdownThread;->access$1802(Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v1, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    # getter for: Lcom/android/server/power/ShutdownThread;->rootView:Landroid/widget/RelativeLayout;
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$1800()Landroid/widget/RelativeLayout;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v6, Landroid/widget/RelativeLayout;

    iget-object v7, p0, Lcom/android/server/power/ShutdownThread$4;->val$ctx:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v7, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    # getter for: Lcom/android/server/power/ShutdownThread;->sIsNeedWhiteTheme:Z
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$1700()Z

    move-result v8

    const/high16 v9, -0x1000000

    if-nez v8, :cond_cd

    invoke-virtual {v6, v9}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    goto :goto_d0

    :cond_cd
    invoke-virtual {v6, v5}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    :goto_d0
    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    const v11, 0x3f333333    # 0.7f

    invoke-virtual {v10, v11}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    const-wide/16 v11, 0x12c

    invoke-virtual {v10, v11, v12}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/ViewPropertyAnimator;->start()V

    new-instance v10, Landroid/widget/LinearLayout;

    iget-object v11, p0, Lcom/android/server/power/ShutdownThread$4;->val$ctx:Landroid/content/Context;

    invoke-direct {v10, v11}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/android/server/power/ShutdownThread;->buttonView:Landroid/widget/LinearLayout;
    invoke-static {v10}, Lcom/android/server/power/ShutdownThread;->access$1902(Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    new-instance v10, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v11, -0x2

    invoke-direct {v10, v11, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v11, 0xd

    invoke-virtual {v10, v11, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    # getter for: Lcom/android/server/power/ShutdownThread;->buttonView:Landroid/widget/LinearLayout;
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$1900()Landroid/widget/LinearLayout;

    move-result-object v11

    invoke-virtual {v11, v10}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    # getter for: Lcom/android/server/power/ShutdownThread;->buttonView:Landroid/widget/LinearLayout;
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$1900()Landroid/widget/LinearLayout;

    move-result-object v11

    invoke-virtual {v11, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    # getter for: Lcom/android/server/power/ShutdownThread;->buttonView:Landroid/widget/LinearLayout;
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$1900()Landroid/widget/LinearLayout;

    move-result-object v11

    const/16 v12, 0x11

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setGravity(I)V

    # getter for: Lcom/android/server/power/ShutdownThread;->buttonView:Landroid/widget/LinearLayout;
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$1900()Landroid/widget/LinearLayout;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/power/ShutdownThread$4;->val$ctx:Landroid/content/Context;

    # getter for: Lcom/android/server/power/ShutdownThread;->sSupportBlackWhiteTheme:Z
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$1400()Z

    move-result v13

    # invokes: Lcom/android/server/power/ShutdownThread;->getButtonView(Landroid/content/Context;Z)Landroid/widget/ImageView;
    invoke-static {v12, v13}, Lcom/android/server/power/ShutdownThread;->access$2000(Landroid/content/Context;Z)Landroid/widget/ImageView;

    move-result-object v12

    invoke-virtual {v11, v12, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    # getter for: Lcom/android/server/power/ShutdownThread;->buttonView:Landroid/widget/LinearLayout;
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$1900()Landroid/widget/LinearLayout;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/power/ShutdownThread$4;->val$ctx:Landroid/content/Context;

    # getter for: Lcom/android/server/power/ShutdownThread;->sIsNeedWhiteTheme:Z
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$1700()Z

    move-result v13

    # invokes: Lcom/android/server/power/ShutdownThread;->getTextView(Landroid/content/Context;Z)Landroid/widget/TextView;
    invoke-static {v12, v13}, Lcom/android/server/power/ShutdownThread;->access$2100(Landroid/content/Context;Z)Landroid/widget/TextView;

    move-result-object v12

    invoke-virtual {v11, v12, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    # getter for: Lcom/android/server/power/ShutdownThread;->buttonView:Landroid/widget/LinearLayout;
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$1900()Landroid/widget/LinearLayout;

    move-result-object v3

    iget-object v11, p0, Lcom/android/server/power/ShutdownThread$4;->val$ctx:Landroid/content/Context;

    # getter for: Lcom/android/server/power/ShutdownThread;->sIsNeedWhiteTheme:Z
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$1700()Z

    move-result v12

    # invokes: Lcom/android/server/power/ShutdownThread;->getDescriptionView(Landroid/content/Context;Z)Landroid/widget/TextView;
    invoke-static {v11, v12}, Lcom/android/server/power/ShutdownThread;->access$2200(Landroid/content/Context;Z)Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v3, v11, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    new-instance v2, Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/android/server/power/ShutdownThread$4;->val$ctx:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/android/server/power/ShutdownThread;->fadeoutView:Landroid/widget/RelativeLayout;
    invoke-static {v2}, Lcom/android/server/power/ShutdownThread;->access$2302(Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    # getter for: Lcom/android/server/power/ShutdownThread;->fadeoutView:Landroid/widget/RelativeLayout;
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$2300()Landroid/widget/RelativeLayout;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    # getter for: Lcom/android/server/power/ShutdownThread;->fadeoutView:Landroid/widget/RelativeLayout;
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$2300()Landroid/widget/RelativeLayout;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    # getter for: Lcom/android/server/power/ShutdownThread;->sSupportBlackWhiteTheme:Z
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$1400()Z

    move-result v3

    if-eqz v3, :cond_178

    # getter for: Lcom/android/server/power/ShutdownThread;->sIsNeedWhiteTheme:Z
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$1700()Z

    move-result v3

    if-eqz v3, :cond_178

    # getter for: Lcom/android/server/power/ShutdownThread;->fadeoutView:Landroid/widget/RelativeLayout;
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$2300()Landroid/widget/RelativeLayout;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    goto :goto_17f

    :cond_178
    # getter for: Lcom/android/server/power/ShutdownThread;->fadeoutView:Landroid/widget/RelativeLayout;
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$2300()Landroid/widget/RelativeLayout;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    :goto_17f
    # getter for: Lcom/android/server/power/ShutdownThread;->sSupportBlackWhiteTheme:Z
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$1400()Z

    move-result v3

    if-eqz v3, :cond_19a

    const/16 v3, 0x200

    # getter for: Lcom/android/server/power/ShutdownThread;->sIsNeedWhiteTheme:Z
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$1700()Z

    move-result v5

    if-eqz v5, :cond_18f

    or-int/lit8 v3, v3, 0x10

    :cond_18f
    invoke-virtual {p0}, Lcom/android/server/power/ShutdownThread$4;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_19a
    new-instance v3, Lcom/android/server/power/ShutdownThread$4$1;

    invoke-direct {v3, p0}, Lcom/android/server/power/ShutdownThread$4$1;-><init>(Lcom/android/server/power/ShutdownThread$4;)V

    new-instance v5, Lcom/android/server/power/ShutdownThread$4$2;

    invoke-direct {v5, p0}, Lcom/android/server/power/ShutdownThread$4$2;-><init>(Lcom/android/server/power/ShutdownThread$4;)V

    nop

    :goto_1a5
    # getter for: Lcom/android/server/power/ShutdownThread;->buttonView:Landroid/widget/LinearLayout;
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$1900()Landroid/widget/LinearLayout;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v8

    if-ge v4, v8, :cond_1c8

    # getter for: Lcom/android/server/power/ShutdownThread;->buttonView:Landroid/widget/LinearLayout;
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$1900()Landroid/widget/LinearLayout;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    # getter for: Lcom/android/server/power/ShutdownThread;->buttonView:Landroid/widget/LinearLayout;
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$1900()Landroid/widget/LinearLayout;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1a5

    :cond_1c8
    # getter for: Lcom/android/server/power/ShutdownThread;->rootView:Landroid/widget/RelativeLayout;
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$1800()Landroid/widget/RelativeLayout;

    move-result-object v4

    new-instance v8, Lcom/android/server/power/ShutdownThread$4$3;

    invoke-direct {v8, p0}, Lcom/android/server/power/ShutdownThread$4$3;-><init>(Lcom/android/server/power/ShutdownThread$4;)V

    invoke-virtual {v4, v8}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    # getter for: Lcom/android/server/power/ShutdownThread;->rootView:Landroid/widget/RelativeLayout;
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$1800()Landroid/widget/RelativeLayout;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    # getter for: Lcom/android/server/power/ShutdownThread;->rootView:Landroid/widget/RelativeLayout;
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$1800()Landroid/widget/RelativeLayout;

    move-result-object v4

    # getter for: Lcom/android/server/power/ShutdownThread;->buttonView:Landroid/widget/LinearLayout;
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$1900()Landroid/widget/LinearLayout;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    # getter for: Lcom/android/server/power/ShutdownThread;->rootView:Landroid/widget/RelativeLayout;
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$1800()Landroid/widget/RelativeLayout;

    move-result-object v4

    # getter for: Lcom/android/server/power/ShutdownThread;->fadeoutView:Landroid/widget/RelativeLayout;
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$2300()Landroid/widget/RelativeLayout;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    # getter for: Lcom/android/server/power/ShutdownThread;->rootView:Landroid/widget/RelativeLayout;
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$1800()Landroid/widget/RelativeLayout;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/power/ShutdownThread$4;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public onStart()V
    .registers 4

    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    const-string v0, "ShutdownThread"

    const-string/jumbo v1, "onStart"

    invoke-static {v0, v1}, Lcom/android/server/power/ShutdownThread$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/power/ShutdownThread$4;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/power/ShutdownThread$4;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v2}, Landroid/view/Window;->setLayout(II)V

    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x20000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x1000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    invoke-virtual {p0}, Lcom/android/server/power/ShutdownThread$4;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/Window;->setWindowAnimations(I)V

    invoke-virtual {p0}, Lcom/android/server/power/ShutdownThread$4;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method
