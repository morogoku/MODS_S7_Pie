.class final Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;
.super Landroid/app/Dialog;
.source "SecVolumeDialogImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/SecVolumeDialogImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CustomDialog"
.end annotation


# instance fields
.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mIsMinimized:Z

.field final synthetic this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/SecVolumeDialogImpl;Landroid/content/Context;)V
    .locals 4

    iput-object p1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-direct {p0, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/view/GestureDetector;

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->access$4200(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeDialogGestureListener;

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeDialogGestureListener;-><init>(Lcom/android/systemui/volume/SecVolumeDialogImpl;Lcom/android/systemui/volume/SecVolumeDialogImpl$1;)V

    invoke-direct {p1, v0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->mGestureDetector:Landroid/view/GestureDetector;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->mIsMinimized:Z

    return-void
.end method

.method public static synthetic lambda$onAttachedToWindow$0(Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->access$11800(Lcom/android/systemui/volume/SecVolumeDialogImpl;)V

    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 10

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->access$11300(Lcom/android/systemui/volume/SecVolumeDialogImpl;)I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x4e20

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->access$4200(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-ne v2, v3, :cond_1

    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v2, v3, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    move v2, v4

    :goto_0
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setFullScreen(Z)V

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v3

    const/16 v5, 0x20

    if-ne v3, v5, :cond_2

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v3}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->access$6900(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v3

    iget-object v5, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v5}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->access$4200(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f120c96

    new-array v7, v1, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    iget-object v9, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v9}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->access$8000(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    move-result-object v9

    invoke-static {v9}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$4700(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->access$11400(Lcom/android/systemui/volume/SecVolumeDialogImpl;Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v1

    :cond_2
    return v4
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-virtual {v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->rescheduleTimeoutH()V

    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->mIsMinimized:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v0, v2}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->access$10102(Lcom/android/systemui/volume/SecVolumeDialogImpl;Z)Z

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->access$5600(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->access$5700(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Lcom/android/systemui/volume/SafetyWarningDialog;

    move-result-object v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-virtual {v2, v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->dismissH(I)V

    monitor-exit v0

    return v1

    :cond_1
    monitor-exit v0

    goto/16 :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v3}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->access$10000(Lcom/android/systemui/volume/SecVolumeDialogImpl;)F

    move-result v3

    sub-float v3, v0, v3

    invoke-static {}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->access$7400()Z

    move-result v4

    if-eqz v4, :cond_2

    goto/16 :goto_1

    :cond_2
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v4}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->access$10100(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v4}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->access$10300(Lcom/android/systemui/volume/SecVolumeDialogImpl;)I

    move-result v4

    float-to-int v5, v3

    add-int/2addr v4, v5

    invoke-static {v2, v4}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->access$8800(Lcom/android/systemui/volume/SecVolumeDialogImpl;I)V

    goto/16 :goto_1

    :cond_3
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v5}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->access$10400(Lcom/android/systemui/volume/SecVolumeDialogImpl;)I

    move-result v5

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_a

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v4}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->access$10200(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Z

    move-result v4

    if-nez v4, :cond_a

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v4}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->access$9500(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Z

    move-result v4

    if-nez v4, :cond_a

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v4, v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->access$10102(Lcom/android/systemui/volume/SecVolumeDialogImpl;Z)Z

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v4}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->access$9400(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->access$10000(Lcom/android/systemui/volume/SecVolumeDialogImpl;)F

    move-result v2

    cmpl-float v2, v0, v2

    if-lez v2, :cond_a

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->access$10500(Lcom/android/systemui/volume/SecVolumeDialogImpl;)V

    goto/16 :goto_1

    :cond_4
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v4}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->access$8900(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    move-result-object v4

    invoke-static {v4}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$3100(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v5}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->access$10600(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Landroid/view/ViewGroup;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-ne v4, v2, :cond_5

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->access$10700(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Lcom/android/systemui/volume/SecVolumeDialogView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/volume/SecVolumeDialogView;->getScrollY()I

    move-result v2

    if-lez v2, :cond_6

    :cond_5
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v4}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->access$8900(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    move-result-object v4

    invoke-static {v2, v4, v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->access$9000(Lcom/android/systemui/volume/SecVolumeDialogImpl;Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;Z)V

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->access$10800(Lcom/android/systemui/volume/SecVolumeDialogImpl;)V

    :cond_6
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v4}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->access$11000(Lcom/android/systemui/volume/SecVolumeDialogImpl;)I

    move-result v4

    invoke-static {v2, v4}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->access$10902(Lcom/android/systemui/volume/SecVolumeDialogImpl;I)I

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v4}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->access$11100(Lcom/android/systemui/volume/SecVolumeDialogImpl;)I

    move-result v4

    invoke-static {v2, v4}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->access$10302(Lcom/android/systemui/volume/SecVolumeDialogImpl;I)I

    goto/16 :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->access$10100(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v0, v2}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->access$10102(Lcom/android/systemui/volume/SecVolumeDialogImpl;Z)Z

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->access$9400(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->access$9600(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->access$10000(Lcom/android/systemui/volume/SecVolumeDialogImpl;)F

    move-result v2

    sub-float/2addr v0, v2

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->access$4200(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledVerticalScrollFactor()F

    move-result v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_7

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->access$9700(Lcom/android/systemui/volume/SecVolumeDialogImpl;)V

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->access$9800(Lcom/android/systemui/volume/SecVolumeDialogImpl;)V

    :cond_8
    :goto_0
    return v1

    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-static {v0, v3}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->access$10002(Lcom/android/systemui/volume/SecVolumeDialogImpl;F)F

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v0, v2}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->access$10102(Lcom/android/systemui/volume/SecVolumeDialogImpl;Z)Z

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v0, v2}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->access$10202(Lcom/android/systemui/volume/SecVolumeDialogImpl;Z)Z

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v0, v2}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->access$9602(Lcom/android/systemui/volume/SecVolumeDialogImpl;Z)Z

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->access$9400(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->access$9500(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->access$6600(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v3}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->access$10000(Lcom/android/systemui/volume/SecVolumeDialogImpl;)F

    move-result v3

    float-to-double v3, v3

    iget v5, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-double v5, v5

    const-wide v7, 0x3feb333333333333L    # 0.85

    mul-double/2addr v5, v7

    cmpl-double v3, v3, v5

    if-lez v3, :cond_9

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v3, v2}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->access$9502(Lcom/android/systemui/volume/SecVolumeDialogImpl;Z)Z

    :cond_9
    nop

    :cond_a
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->access$10100(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Z

    move-result v0

    if-nez v0, :cond_b

    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :cond_b
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/app/Dialog;->onAttachedToWindow()V

    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->mIsMinimized:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->access$2900(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Landroid/view/ViewGroup;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/volume/-$$Lambda$SecVolumeDialogImpl$CustomDialog$vmHt6___Alp-mC2LDJKWFKWcMoY;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/-$$Lambda$SecVolumeDialogImpl$CustomDialog$vmHt6___Alp-mC2LDJKWFKWcMoY;-><init>(Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->access$11500(Lcom/android/systemui/volume/SecVolumeDialogImpl;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->access$11600(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->access$11700(Lcom/android/systemui/volume/SecVolumeDialogImpl;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onStop()V
    .locals 4

    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->access$11200(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Lcom/android/systemui/volume/VolumeDialogMotion;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/volume/VolumeDialogMotion;->isAnimating()Z

    move-result v0

    sget-boolean v1, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStop animating="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->access$2702(Lcom/android/systemui/volume/SecVolumeDialogImpl;Z)Z

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->access$2600(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Lcom/android/systemui/volume/SecVolumeDialogImpl$H;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/systemui/volume/SecVolumeDialogImpl$H;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->access$5600(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->access$5700(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Lcom/android/systemui/volume/SafetyWarningDialog;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->dismissH(I)V

    monitor-exit v0

    return v2

    :cond_0
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setMinimized(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->mIsMinimized:Z

    return-void
.end method
