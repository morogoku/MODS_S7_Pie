.class Lcom/android/server/bridge/operations/DbObserver$4;
.super Landroid/database/ContentObserver;
.source "DbObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/bridge/operations/DbObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/bridge/operations/DbObserver;


# direct methods
.method constructor <init>(Lcom/android/server/bridge/operations/DbObserver;Landroid/os/Handler;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/bridge/operations/DbObserver$4;->this$0:Lcom/android/server/bridge/operations/DbObserver;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/bridge/operations/DbObserver$4;->onChange(ZLandroid/net/Uri;)V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/bridge/operations/DbObserver$4;->this$0:Lcom/android/server/bridge/operations/DbObserver;

    # invokes: Lcom/android/server/bridge/operations/DbObserver;->startCalendarSync()V
    invoke-static {v0}, Lcom/android/server/bridge/operations/DbObserver;->access$400(Lcom/android/server/bridge/operations/DbObserver;)V

    return-void
.end method