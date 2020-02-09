.class final Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$SemDisplayVolumeMixerListener;
.super Ljava/lang/Object;
.source "SoundModeTileVolumeMixer.java"

# interfaces
.implements Landroid/hardware/display/SemDisplayVolumeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SemDisplayVolumeMixerListener"
.end annotation


# instance fields
.field private mSmartViewRow:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;

.field final synthetic this$0:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;


# direct methods
.method private constructor <init>(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$SemDisplayVolumeMixerListener;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$SemDisplayVolumeMixerListener;-><init>(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;)V

    return-void
.end method


# virtual methods
.method public onVolumeChanged(IIIZ)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$SemDisplayVolumeMixerListener;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;

    const/16 v1, 0xb

    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->access$600(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;I)Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$SemDisplayVolumeMixerListener;->mSmartViewRow:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$SemDisplayVolumeMixerListener;->mSmartViewRow:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$SemDisplayVolumeMixerListener;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->access$1500(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;)I

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$SemDisplayVolumeMixerListener;->mSmartViewRow:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;->access$1100(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->semSetMin(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$SemDisplayVolumeMixerListener;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->access$1600(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;)I

    move-result v0

    if-eq v0, p2, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$SemDisplayVolumeMixerListener;->mSmartViewRow:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;->access$1100(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/SeekBar;->setMax(I)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$SemDisplayVolumeMixerListener;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->access$1700(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;)Z

    move-result v0

    if-eq v0, p4, :cond_4

    if-nez p4, :cond_3

    if-nez p3, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$SemDisplayVolumeMixerListener;->mSmartViewRow:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;->access$1100(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_2

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$SemDisplayVolumeMixerListener;->mSmartViewRow:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;->access$1100(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$SemDisplayVolumeMixerListener;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;

    invoke-static {v0, p1}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->access$1502(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;I)I

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$SemDisplayVolumeMixerListener;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;

    invoke-static {v0, p2}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->access$1602(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;I)I

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$SemDisplayVolumeMixerListener;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;

    invoke-static {v0, p4}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->access$1702(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;Z)Z

    return-void
.end method
