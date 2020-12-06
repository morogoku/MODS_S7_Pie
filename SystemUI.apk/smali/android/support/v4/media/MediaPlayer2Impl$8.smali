.class Landroid/support/v4/media/MediaPlayer2Impl$8;
.super Landroid/support/v4/media/MediaPlayer2Impl$Task;
.source "MediaPlayer2Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaPlayer2Impl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/media/MediaPlayer2Impl;

.field final synthetic val$dsd:Landroid/support/v4/media/DataSourceDesc;


# virtual methods
.method process()V
    .locals 3

    iget-object v0, p0, Landroid/support/v4/media/MediaPlayer2Impl$8;->val$dsd:Landroid/support/v4/media/DataSourceDesc;

    const-string/jumbo v1, "the DataSourceDesc cannot be null"

    invoke-static {v0, v1}, Landroid/support/v4/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/support/v4/media/MediaPlayer2Impl$8;->this$0:Landroid/support/v4/media/MediaPlayer2Impl;

    iget-object v1, p0, Landroid/support/v4/media/MediaPlayer2Impl$8;->this$0:Landroid/support/v4/media/MediaPlayer2Impl;

    invoke-static {v1}, Landroid/support/v4/media/MediaPlayer2Impl;->access$100(Landroid/support/v4/media/MediaPlayer2Impl;)Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/media/MediaPlayer2Impl$8;->val$dsd:Landroid/support/v4/media/DataSourceDesc;

    invoke-virtual {v1, v2}, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;->setNext(Landroid/support/v4/media/DataSourceDesc;)Landroid/support/v4/media/MediaPlayer2Impl$DataSourceError;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v4/media/MediaPlayer2Impl;->access$200(Landroid/support/v4/media/MediaPlayer2Impl;Landroid/support/v4/media/MediaPlayer2Impl$DataSourceError;)V

    return-void
.end method
