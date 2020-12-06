.class Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter$3;
.super Ljava/lang/Object;
.source "FlashlightTile.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter$3;->this$1:Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4

    if-eqz p3, :cond_2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter$3;->this$1:Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter;

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/FlashlightTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/FlashlightTile;->access$000(Lcom/android/systemui/qs/tiles/FlashlightTile;)Lcom/android/systemui/statusbar/policy/FlashlightController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p2, v1}, Lcom/android/systemui/statusbar/policy/FlashlightController;->setFlashlightLevel(IZ)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter$3;->this$1:Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter;->access$2400(Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter$3;->this$1:Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter;->access$2400(Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v2, 0x3

    if-lt p2, v2, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "4004"

    int-to-long v2, p2

    invoke-static {v0, v1, v2, v3}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    :cond_2
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter$3;->this$1:Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter;

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/FlashlightTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/FlashlightTile;->access$000(Lcom/android/systemui/qs/tiles/FlashlightTile;)Lcom/android/systemui/statusbar/policy/FlashlightController;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/FlashlightController;->setFlashlightLevel(IZ)V

    return-void
.end method
