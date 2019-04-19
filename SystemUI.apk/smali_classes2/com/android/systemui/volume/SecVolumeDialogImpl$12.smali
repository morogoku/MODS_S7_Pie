.class Lcom/android/systemui/volume/SecVolumeDialogImpl$12;
.super Ljava/lang/Object;
.source "SecVolumeDialogImpl.java"

# interfaces
.implements Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/SecVolumeDialogImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/SecVolumeDialogImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$12;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccessibilityModeChanged(Ljava/lang/Boolean;)V
    .locals 3

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$12;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v1, v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->access$7902(Lcom/android/systemui/volume/SecVolumeDialogImpl;Z)Z

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$12;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$12;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->access$8000(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->access$8100(Lcom/android/systemui/volume/SecVolumeDialogImpl;Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)V

    return-void
.end method

.method public onConfigurationChanged()V
    .locals 10

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$12;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->access$6402(Lcom/android/systemui/volume/SecVolumeDialogImpl;Landroid/widget/Toast;)Landroid/widget/Toast;

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$12;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v0, v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->access$6502(Lcom/android/systemui/volume/SecVolumeDialogImpl;Landroid/widget/Toast;)Landroid/widget/Toast;

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$12;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->access$6600(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v1, v0, Landroid/content/res/Configuration;->densityDpi:I

    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    iget v3, v0, Landroid/content/res/Configuration;->uiMode:I

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$12;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v4}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->access$6700(Lcom/android/systemui/volume/SecVolumeDialogImpl;)I

    move-result v4

    and-int/lit8 v4, v4, 0x30

    and-int/lit8 v5, v3, 0x30

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eq v4, v5, :cond_0

    move v4, v6

    goto :goto_0

    :cond_0
    move v4, v7

    :goto_0
    iget-object v5, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$12;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v5}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->access$6800(Lcom/android/systemui/volume/SecVolumeDialogImpl;)I

    move-result v5

    const/4 v8, 0x2

    if-eq v2, v5, :cond_1

    iget-object v5, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$12;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v5, v2}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->access$6802(Lcom/android/systemui/volume/SecVolumeDialogImpl;I)I

    iget-object v5, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$12;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v5}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->access$6900(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$12;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-virtual {v5, v8}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->dismissH(I)V

    :cond_1
    iget-object v5, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$12;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v5}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->access$7000(Lcom/android/systemui/volume/SecVolumeDialogImpl;)I

    move-result v5

    if-ne v1, v5, :cond_2

    if-eqz v4, :cond_3

    :cond_2
    invoke-static {}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->access$200()Ljava/lang/String;

    move-result-object v5

    const-string v9, "Night mode / DENSITY changed"

    invoke-static {v5, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$12;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    iget-object v9, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$12;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v9}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->access$7200(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Z

    move-result v9

    invoke-static {v5, v9}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->access$7102(Lcom/android/systemui/volume/SecVolumeDialogImpl;Z)Z

    iget-object v5, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$12;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v5}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->access$7300(Lcom/android/systemui/volume/SecVolumeDialogImpl;)V

    :cond_3
    iget-object v5, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$12;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v5, v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->access$7002(Lcom/android/systemui/volume/SecVolumeDialogImpl;I)I

    iget-object v5, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$12;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v5, v3}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->access$6702(Lcom/android/systemui/volume/SecVolumeDialogImpl;I)I

    invoke-static {}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->access$7400()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$12;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v5}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->access$7500(Lcom/android/systemui/volume/SecVolumeDialogImpl;)V

    :cond_4
    iget-object v5, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$12;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v5}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->access$7600(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iget-object v9, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$12;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v9}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->access$6600(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget v9, v9, Landroid/content/res/Configuration;->orientation:I

    if-ne v9, v8, :cond_5

    goto :goto_1

    :cond_5
    move v6, v7

    :goto_1
    if-eqz v6, :cond_6

    goto :goto_2

    :cond_6
    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$12;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v7}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->access$6600(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f070828

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    :goto_2
    iput v7, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$12;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v7}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->access$7600(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/systemui/volume/SecVolumeDialogImpl$CustomDialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    sget-boolean v7, Lcom/android/systemui/volume/D;->ENG:Z

    if-eqz v7, :cond_7

    invoke-static {}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->access$200()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onConfigurationChanged() config="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-void
.end method

.method public onDismissRequested(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$12;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-virtual {v0, p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->dismissH(I)V

    return-void
.end method

.method public onLayoutDirectionChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$12;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->access$6200(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setLayoutDirection(I)V

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$12;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->access$6300(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setLayoutDirection(I)V

    return-void
.end method

.method public onPlaySound()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$12;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->access$8200(Lcom/android/systemui/volume/SecVolumeDialogImpl;)V

    return-void
.end method

.method public onScreenOff()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$12;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->dismissH(I)V

    return-void
.end method

.method public onShowRequested(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$12;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v0, p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->access$6000(Lcom/android/systemui/volume/SecVolumeDialogImpl;I)V

    return-void
.end method

.method public onShowSafetyWarning(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$12;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v0, p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->access$7800(Lcom/android/systemui/volume/SecVolumeDialogImpl;I)V

    return-void
.end method

.method public onShowSilentHint()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$12;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->access$7700(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$12;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->access$3900(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Lcom/android/systemui/plugins/VolumeDialogController;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/plugins/VolumeDialogController;->setRingerMode(IZ)V

    :cond_0
    return-void
.end method

.method public onShowVibrateHint()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$12;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->access$7700(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$12;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->access$3900(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Lcom/android/systemui/plugins/VolumeDialogController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1, v1}, Lcom/android/systemui/plugins/VolumeDialogController;->setRingerMode(IZ)V

    :cond_0
    return-void
.end method

.method public onShowVolumeLimiterToast()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$12;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->access$8500(Lcom/android/systemui/volume/SecVolumeDialogImpl;)V

    return-void
.end method

.method public onStateChanged(Lcom/android/systemui/plugins/VolumeDialogController$State;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$12;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v0, p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->access$6100(Lcom/android/systemui/volume/SecVolumeDialogImpl;Lcom/android/systemui/plugins/VolumeDialogController$State;)V

    return-void
.end method

.method public onStopSound()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$12;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->access$8300(Lcom/android/systemui/volume/SecVolumeDialogImpl;)V

    return-void
.end method

.method public onThemeChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$12;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->access$8400(Lcom/android/systemui/volume/SecVolumeDialogImpl;)V

    return-void
.end method

.method public onZenModeChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$12;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->access$8600(Lcom/android/systemui/volume/SecVolumeDialogImpl;)V

    return-void
.end method
