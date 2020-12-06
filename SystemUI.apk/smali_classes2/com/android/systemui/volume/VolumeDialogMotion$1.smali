.class Lcom/android/systemui/volume/VolumeDialogMotion$1;
.super Ljava/lang/Object;
.source "VolumeDialogMotion.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/VolumeDialogMotion;-><init>(Landroid/app/Dialog;Landroid/view/View;Landroid/view/ViewGroup;Lcom/android/systemui/volume/VolumeDialogMotion$Callback;)V
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

    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogMotion$1;->this$0:Lcom/android/systemui/volume/VolumeDialogMotion;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 3

    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/systemui/volume/VolumeDialogMotion;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mDialog.onShow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->isDexMode()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion$1;->this$0:Lcom/android/systemui/volume/VolumeDialogMotion;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogMotion;->access$100(Lcom/android/systemui/volume/VolumeDialogMotion;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogMotion$1;->this$0:Lcom/android/systemui/volume/VolumeDialogMotion;

    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialogMotion;->access$100(Lcom/android/systemui/volume/VolumeDialogMotion;)Landroid/view/View;

    move-result-object v1

    neg-int v2, v0

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogMotion$1;->this$0:Lcom/android/systemui/volume/VolumeDialogMotion;

    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialogMotion;->access$200(Lcom/android/systemui/volume/VolumeDialogMotion;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion$1;->this$0:Lcom/android/systemui/volume/VolumeDialogMotion;

    invoke-virtual {v0}, Lcom/android/systemui/volume/VolumeDialogMotion;->startShowDexAnimation()V

    :goto_0
    return-void
.end method
