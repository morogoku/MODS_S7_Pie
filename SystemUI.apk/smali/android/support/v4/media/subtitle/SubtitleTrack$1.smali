.class Landroid/support/v4/media/subtitle/SubtitleTrack$1;
.super Ljava/lang/Object;
.source "SubtitleTrack.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/subtitle/SubtitleTrack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/media/subtitle/SubtitleTrack;

.field final synthetic val$thenMs:J

.field final synthetic val$track:Landroid/support/v4/media/subtitle/SubtitleTrack;


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Landroid/support/v4/media/subtitle/SubtitleTrack$1;->val$track:Landroid/support/v4/media/subtitle/SubtitleTrack;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/subtitle/SubtitleTrack$1;->this$0:Landroid/support/v4/media/subtitle/SubtitleTrack;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/support/v4/media/subtitle/SubtitleTrack;->access$102(Landroid/support/v4/media/subtitle/SubtitleTrack;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    iget-object v1, p0, Landroid/support/v4/media/subtitle/SubtitleTrack$1;->this$0:Landroid/support/v4/media/subtitle/SubtitleTrack;

    const/4 v2, 0x1

    iget-wide v3, p0, Landroid/support/v4/media/subtitle/SubtitleTrack$1;->val$thenMs:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/support/v4/media/subtitle/SubtitleTrack;->updateActiveCues(ZJ)V

    iget-object v1, p0, Landroid/support/v4/media/subtitle/SubtitleTrack$1;->this$0:Landroid/support/v4/media/subtitle/SubtitleTrack;

    iget-object v2, p0, Landroid/support/v4/media/subtitle/SubtitleTrack$1;->this$0:Landroid/support/v4/media/subtitle/SubtitleTrack;

    invoke-static {v2}, Landroid/support/v4/media/subtitle/SubtitleTrack;->access$200(Landroid/support/v4/media/subtitle/SubtitleTrack;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/media/subtitle/SubtitleTrack;->updateView(Ljava/util/ArrayList;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
