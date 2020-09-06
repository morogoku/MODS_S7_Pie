.class final Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$CoverManagerHandler;
.super Landroid/os/Handler;
.source "CoverManagerServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CoverManagerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;


# direct methods
.method private constructor <init>(Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;Landroid/os/Looper;)V
    .registers 4

    iput-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$CoverManagerHandler;->this$0:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;Landroid/os/Looper;Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$1;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$CoverManagerHandler;-><init>(Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x12c

    if-eq v0, v1, :cond_7

    goto :goto_d

    :cond_7
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$CoverManagerHandler;->this$0:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    # invokes: Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->updateCoverWindowSize()V
    invoke-static {v0}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->access$1900(Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;)V

    nop

    :goto_d
    return-void
.end method
