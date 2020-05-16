.class Lcom/android/systemui/volume/SecVolumeDialogImpl$9;
.super Ljava/lang/Object;
.source "SecVolumeDialogImpl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/SecVolumeDialogImpl;->initRow(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;IIIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

.field final synthetic val$isSmartView:Z

.field final synthetic val$row:Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

.field final synthetic val$stream:I


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/SecVolumeDialogImpl;Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;IZ)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$9;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    iput-object p2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$9;->val$row:Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    iput p3, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$9;->val$stream:I

    iput-boolean p4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$9;->val$isSmartView:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$9;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->access$4200(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$9;->val$row:Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    invoke-static {v3}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$3300(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$9;->val$row:Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    invoke-static {v3}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$4300(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const/4 v3, 0x7

    invoke-static {v0, v3, v2}, Lcom/android/systemui/volume/Events;->writeEvent(Landroid/content/Context;I[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$9;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->access$3900(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Lcom/android/systemui/plugins/VolumeDialogController;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$9;->val$row:Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$3300(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v2

    invoke-interface {v0, v2}, Lcom/android/systemui/plugins/VolumeDialogController;->setActiveStream(I)V

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$9;->val$row:Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$3300(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v0

    if-eq v0, v1, :cond_6

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$9;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->access$4400(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$9;->val$row:Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$3300(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$9;->val$isSmartView:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$9;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->access$4900(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$9;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->access$5000(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Landroid/hardware/display/DisplayManager;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$9;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->access$5000(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Landroid/hardware/display/DisplayManager;

    move-result-object v0

    const-string v1, "muvo"

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->semGetWifiDisplayConfiguration(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->access$200()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "STREAM_SMART_VIEW onClick.mute:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$9;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->access$5000(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Landroid/hardware/display/DisplayManager;

    move-result-object v2

    const-string v3, "mkev"

    xor-int/lit8 v4, v1, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/hardware/display/DisplayManager;->semSetWifiDisplayConfiguration(Ljava/lang/String;Z)I

    :cond_2
    goto/16 :goto_5

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$9;->val$row:Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$4700(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-result-object v0

    iget v0, v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$9;->val$row:Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$4700(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-result-object v1

    iget v1, v1, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->levelMin:I

    if-ne v0, v1, :cond_4

    move v4, v5

    nop

    :cond_4
    move v0, v4

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$9;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->access$3900(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Lcom/android/systemui/plugins/VolumeDialogController;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$9;->val$stream:I

    if-eqz v0, :cond_5

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$9;->val$row:Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    invoke-static {v3}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$4800(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v3

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$9;->val$row:Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    invoke-static {v3}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$4700(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-result-object v3

    iget v3, v3, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->levelMin:I

    :goto_1
    invoke-interface {v1, v2, v3}, Lcom/android/systemui/plugins/VolumeDialogController;->setStreamVolume(II)V

    goto/16 :goto_5

    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$9;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->access$3900(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Lcom/android/systemui/plugins/VolumeDialogController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/plugins/VolumeDialogController;->hasVibrator()Z

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$9;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->access$4500(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$9;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->access$4600(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Lcom/android/systemui/plugins/VolumeDialogController$State;

    move-result-object v1

    iget v1, v1, Lcom/android/systemui/plugins/VolumeDialogController$State;->ringerModeInternal:I

    if-nez v1, :cond_7

    if-eqz v0, :cond_d

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$9;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->access$3900(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Lcom/android/systemui/plugins/VolumeDialogController;

    move-result-object v1

    invoke-interface {v1, v5, v4}, Lcom/android/systemui/plugins/VolumeDialogController;->setRingerMode(IZ)V

    goto :goto_4

    :cond_7
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$9;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->access$3900(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Lcom/android/systemui/plugins/VolumeDialogController;

    move-result-object v1

    invoke-interface {v1, v4, v4}, Lcom/android/systemui/plugins/VolumeDialogController;->setRingerMode(IZ)V

    goto :goto_4

    :cond_8
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$9;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->access$4600(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Lcom/android/systemui/plugins/VolumeDialogController$State;

    move-result-object v2

    iget v2, v2, Lcom/android/systemui/plugins/VolumeDialogController$State;->ringerModeInternal:I

    if-ne v2, v1, :cond_c

    if-eqz v0, :cond_9

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$9;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->access$3900(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Lcom/android/systemui/plugins/VolumeDialogController;

    move-result-object v1

    invoke-interface {v1, v5, v4}, Lcom/android/systemui/plugins/VolumeDialogController;->setRingerMode(IZ)V

    goto :goto_4

    :cond_9
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$9;->val$row:Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$4700(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-result-object v1

    iget v1, v1, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    if-nez v1, :cond_a

    goto :goto_3

    :cond_a
    move v5, v4

    :goto_3
    move v1, v5

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$9;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->access$3900(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Lcom/android/systemui/plugins/VolumeDialogController;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$9;->val$stream:I

    if-eqz v1, :cond_b

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$9;->val$row:Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    invoke-static {v4}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$4800(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v4

    nop

    :cond_b
    invoke-interface {v2, v3, v4}, Lcom/android/systemui/plugins/VolumeDialogController;->setStreamVolume(II)V

    goto :goto_4

    :cond_c
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$9;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->access$3900(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Lcom/android/systemui/plugins/VolumeDialogController;

    move-result-object v2

    invoke-interface {v2, v1, v4}, Lcom/android/systemui/plugins/VolumeDialogController;->setRingerMode(IZ)V

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$9;->val$row:Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$4700(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-result-object v1

    iget v1, v1, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    if-nez v1, :cond_d

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$9;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->access$3900(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Lcom/android/systemui/plugins/VolumeDialogController;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$9;->val$stream:I

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$9;->val$row:Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    invoke-static {v3}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$4800(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/android/systemui/plugins/VolumeDialogController;->setStreamVolume(II)V

    :cond_d
    :goto_4
    nop

    :cond_e
    :goto_5
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$9;->val$row:Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$5102(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;J)J

    return-void
.end method
