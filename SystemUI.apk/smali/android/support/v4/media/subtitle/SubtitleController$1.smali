.class Landroid/support/v4/media/subtitle/SubtitleController$1;
.super Ljava/lang/Object;
.source "SubtitleController.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/subtitle/SubtitleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/media/subtitle/SubtitleController;


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    iget-object v0, p0, Landroid/support/v4/media/subtitle/SubtitleController$1;->this$0:Landroid/support/v4/media/subtitle/SubtitleController;

    invoke-static {v0}, Landroid/support/v4/media/subtitle/SubtitleController;->access$300(Landroid/support/v4/media/subtitle/SubtitleController;)V

    return v1

    :pswitch_1
    iget-object v0, p0, Landroid/support/v4/media/subtitle/SubtitleController$1;->this$0:Landroid/support/v4/media/subtitle/SubtitleController;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/support/v4/media/subtitle/SubtitleTrack;

    invoke-static {v0, v2}, Landroid/support/v4/media/subtitle/SubtitleController;->access$200(Landroid/support/v4/media/subtitle/SubtitleController;Landroid/support/v4/media/subtitle/SubtitleTrack;)V

    return v1

    :pswitch_2
    iget-object v0, p0, Landroid/support/v4/media/subtitle/SubtitleController$1;->this$0:Landroid/support/v4/media/subtitle/SubtitleController;

    invoke-static {v0}, Landroid/support/v4/media/subtitle/SubtitleController;->access$100(Landroid/support/v4/media/subtitle/SubtitleController;)V

    return v1

    :pswitch_3
    iget-object v0, p0, Landroid/support/v4/media/subtitle/SubtitleController$1;->this$0:Landroid/support/v4/media/subtitle/SubtitleController;

    invoke-static {v0}, Landroid/support/v4/media/subtitle/SubtitleController;->access$000(Landroid/support/v4/media/subtitle/SubtitleController;)V

    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
