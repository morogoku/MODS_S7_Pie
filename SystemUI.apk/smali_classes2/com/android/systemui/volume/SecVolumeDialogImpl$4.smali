.class Lcom/android/systemui/volume/SecVolumeDialogImpl$4;
.super Ljava/lang/Object;
.source "SecVolumeDialogImpl.java"

# interfaces
.implements Landroid/hardware/display/SemDisplayVolumeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/SecVolumeDialogImpl;-><init>(Landroid/content/Context;)V
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

    iput-object p1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$4;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVolumeChanged(IIIZ)V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$4;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->access$1100(Lcom/android/systemui/volume/SecVolumeDialogImpl;)I

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$4;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->access$1200(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$1300(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->semSetMin(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$4;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->access$1400(Lcom/android/systemui/volume/SecVolumeDialogImpl;)I

    move-result v0

    if-eq v0, p2, :cond_1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$4;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->access$1200(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$1300(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/SeekBar;->setMax(I)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$4;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p4, :cond_3

    if-nez p3, :cond_2

    goto :goto_1

    :cond_2
    move v3, v2

    goto :goto_2

    :cond_3
    :goto_1
    move v3, v1

    :goto_2
    invoke-static {v0, v3}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->access$1500(Lcom/android/systemui/volume/SecVolumeDialogImpl;Z)I

    move-result v0

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$4;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v3}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->access$1200(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    move-result-object v3

    invoke-static {v3}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$1600(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v3

    if-eq v0, v3, :cond_4

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$4;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v3}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->access$1200(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$1602(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;I)I

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$4;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v3}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->access$1200(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$4;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v4, v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->access$1500(Lcom/android/systemui/volume/SecVolumeDialogImpl;Z)I

    move-result v1

    invoke-static {v3, v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$1702(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;I)I

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$4;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->access$1200(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$1800(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$4;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->access$1900(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Z

    move-result v1

    if-eq v1, p4, :cond_7

    if-nez p4, :cond_6

    if-nez p3, :cond_5

    goto :goto_3

    :cond_5
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$4;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->access$1200(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$1800(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$4;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->access$2100(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$4;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->access$1200(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$1300(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_4

    :cond_6
    :goto_3
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$4;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->access$1200(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$1800(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v1

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$4;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v3}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->access$2000(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$4;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->access$1200(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->access$1300(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_7
    :goto_4
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$4;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v1, p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->access$1102(Lcom/android/systemui/volume/SecVolumeDialogImpl;I)I

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$4;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v1, p2}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->access$1402(Lcom/android/systemui/volume/SecVolumeDialogImpl;I)I

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$4;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v1, p4}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->access$1902(Lcom/android/systemui/volume/SecVolumeDialogImpl;Z)Z

    return-void
.end method
