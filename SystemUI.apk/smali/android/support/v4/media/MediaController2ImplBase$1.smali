.class Landroid/support/v4/media/MediaController2ImplBase$1;
.super Ljava/lang/Object;
.source "MediaController2ImplBase.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaController2ImplBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/media/MediaController2ImplBase;


# virtual methods
.method public binderDied()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/MediaController2ImplBase$1;->this$0:Landroid/support/v4/media/MediaController2ImplBase;

    invoke-static {v0}, Landroid/support/v4/media/MediaController2ImplBase;->access$000(Landroid/support/v4/media/MediaController2ImplBase;)Landroid/support/v4/media/MediaController2;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/MediaController2;->close()V

    return-void
.end method