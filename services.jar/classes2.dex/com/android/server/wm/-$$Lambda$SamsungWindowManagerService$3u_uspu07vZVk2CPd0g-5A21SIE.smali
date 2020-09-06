.class public final synthetic Lcom/android/server/wm/-$$Lambda$SamsungWindowManagerService$3u_uspu07vZVk2CPd0g-5A21SIE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/server/wm/-$$Lambda$SamsungWindowManagerService$3u_uspu07vZVk2CPd0g-5A21SIE;->f$0:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-boolean v0, p0, Lcom/android/server/wm/-$$Lambda$SamsungWindowManagerService$3u_uspu07vZVk2CPd0g-5A21SIE;->f$0:Z

    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-static {v0, p1}, Lcom/android/server/wm/SamsungWindowManagerService;->lambda$notifyCoverStateChanged$3(ZLcom/android/server/wm/WindowState;)V

    return-void
.end method
