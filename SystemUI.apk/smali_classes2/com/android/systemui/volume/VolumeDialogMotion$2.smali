.class Lcom/android/systemui/volume/VolumeDialogMotion$2;
.super Ljava/lang/Object;
.source "VolumeDialogMotion.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/VolumeDialogMotion;->startShowAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/VolumeDialogMotion;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/VolumeDialogMotion;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogMotion$2;->this$0:Lcom/android/systemui/volume/VolumeDialogMotion;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion$2;->this$0:Lcom/android/systemui/volume/VolumeDialogMotion;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogMotion;->access$300(Lcom/android/systemui/volume/VolumeDialogMotion;)Lcom/android/systemui/volume/VolumeDialogMotion$Callback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/volume/VolumeDialogMotion$Callback;->onShowCompleted()V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion$2;->this$0:Lcom/android/systemui/volume/VolumeDialogMotion;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/volume/VolumeDialogMotion;->access$400(Lcom/android/systemui/volume/VolumeDialogMotion;Z)V

    return-void
.end method
