.class Lcom/android/systemui/volume/SecVolumeDialogImpl$16;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SecVolumeDialogImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/SecVolumeDialogImpl;->expandDialogAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCancelled:Z

.field final synthetic this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/SecVolumeDialogImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$16;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method private onAnimFinished()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$16;->mCancelled:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$16;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    const/16 v1, 0x2710

    invoke-static {v0, v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->access$8800(Lcom/android/systemui/volume/SecVolumeDialogImpl;I)V

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$16;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$16;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->access$8900(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->access$9000(Lcom/android/systemui/volume/SecVolumeDialogImpl;Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;Z)V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mExpandAnimator.onAnimationCancel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl$16;->onAnimFinished()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$16;->mCancelled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$16;->mCancelled:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mExpandAnimator.onAnimationEnd"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/volume/SecVolumeDialogImpl$16;->onAnimFinished()V

    return-void
.end method
