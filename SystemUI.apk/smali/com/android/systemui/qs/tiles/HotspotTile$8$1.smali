.class Lcom/android/systemui/qs/tiles/HotspotTile$8$1;
.super Ljava/lang/Object;
.source "HotspotTile.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/HotspotTile$8;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/qs/tiles/HotspotTile$8;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/HotspotTile$8;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$8$1;->this$1:Lcom/android/systemui/qs/tiles/HotspotTile$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$8$1;->this$1:Lcom/android/systemui/qs/tiles/HotspotTile$8;

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/HotspotTile$8;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/HotspotTile;->access$2200(Lcom/android/systemui/qs/tiles/HotspotTile;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setHotspotEnabled "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile$8$1;->this$1:Lcom/android/systemui/qs/tiles/HotspotTile$8;

    iget-boolean v2, v2, Lcom/android/systemui/qs/tiles/HotspotTile$8;->val$isEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " after wifi is disabled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$8$1;->this$1:Lcom/android/systemui/qs/tiles/HotspotTile$8;

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/HotspotTile$8;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/HotspotTile;->access$1700(Lcom/android/systemui/qs/tiles/HotspotTile;)Lcom/android/systemui/statusbar/policy/HotspotController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$8$1;->this$1:Lcom/android/systemui/qs/tiles/HotspotTile$8;

    iget-boolean v1, v1, Lcom/android/systemui/qs/tiles/HotspotTile$8;->val$isEnabled:Z

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/HotspotController;->setHotspotEnabled(Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$8$1;->this$1:Lcom/android/systemui/qs/tiles/HotspotTile$8;

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/HotspotTile$8;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/HotspotTile;->refreshState()V

    return-void
.end method
