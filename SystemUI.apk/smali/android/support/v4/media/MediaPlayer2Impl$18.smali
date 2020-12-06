.class Landroid/support/v4/media/MediaPlayer2Impl$18;
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

.field final synthetic val$effectId:I


# virtual methods
.method process()V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/media/MediaPlayer2Impl$18;->this$0:Landroid/support/v4/media/MediaPlayer2Impl;

    invoke-static {v0}, Landroid/support/v4/media/MediaPlayer2Impl;->access$100(Landroid/support/v4/media/MediaPlayer2Impl;)Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;

    move-result-object v0

    iget v1, p0, Landroid/support/v4/media/MediaPlayer2Impl$18;->val$effectId:I

    invoke-virtual {v0, v1}, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;->attachAuxEffect(I)V

    return-void
.end method
