.class final Lcom/android/server/am/SamsungActivityManagerService$BgHandler;
.super Landroid/os/Handler;
.source "SamsungActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/SamsungActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "BgHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/SamsungActivityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/SamsungActivityManagerService;Landroid/os/Looper;)V
    .registers 5

    iput-object p1, p0, Lcom/android/server/am/SamsungActivityManagerService$BgHandler;->this$0:Lcom/android/server/am/SamsungActivityManagerService;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    iget v0, p1, Landroid/os/Message;->what:I

    return-void
.end method