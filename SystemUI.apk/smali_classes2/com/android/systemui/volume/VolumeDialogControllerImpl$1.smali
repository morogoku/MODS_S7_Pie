.class Lcom/android/systemui/volume/VolumeDialogControllerImpl$1;
.super Ljava/lang/Object;
.source "VolumeDialogControllerImpl.java"

# interfaces
.implements Landroid/hardware/display/SemDisplayVolumeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/VolumeDialogControllerImpl;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/VolumeDialogControllerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$1;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVolumeChanged(IIIZ)V
    .locals 4

    invoke-static {}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SmartView]onVolumeChanged curVol = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$1;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    const/16 v1, 0xd

    invoke-static {v0, v1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->access$300(Lcom/android/systemui/volume/VolumeDialogControllerImpl;I)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->muted:Z

    if-eq v0, p4, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$1;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    invoke-static {v0, v1, p4}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->access$400(Lcom/android/systemui/volume/VolumeDialogControllerImpl;IZ)Z

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$1;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    invoke-static {v0, p3}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->access$502(Lcom/android/systemui/volume/VolumeDialogControllerImpl;I)I

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$1;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    invoke-static {v0, p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->access$602(Lcom/android/systemui/volume/VolumeDialogControllerImpl;I)I

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$1;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    invoke-static {v0, p2}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->access$702(Lcom/android/systemui/volume/VolumeDialogControllerImpl;I)I

    invoke-static {}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->access$800()Z

    move-result v0

    const/4 v2, -0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$1;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->access$900(Lcom/android/systemui/volume/VolumeDialogControllerImpl;)I

    move-result v0

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$1;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$1;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    invoke-static {v3}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->access$900(Lcom/android/systemui/volume/VolumeDialogControllerImpl;)I

    move-result v3

    invoke-virtual {v0, v1, v3}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->onVolumeChangedW(II)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$1;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->onVolumeChangedW(II)Z

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$1;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    invoke-static {v0, v2}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->access$902(Lcom/android/systemui/volume/VolumeDialogControllerImpl;I)I

    return-void
.end method
