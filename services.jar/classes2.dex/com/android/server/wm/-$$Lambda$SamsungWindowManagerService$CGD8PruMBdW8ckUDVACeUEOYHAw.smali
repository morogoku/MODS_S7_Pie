.class public final synthetic Lcom/android/server/wm/-$$Lambda$SamsungWindowManagerService$CGD8PruMBdW8ckUDVACeUEOYHAw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic f$0:Lcom/android/server/wm/SamsungWindowManagerService;

.field private final synthetic f$1:I

.field private final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/SamsungWindowManagerService;IZ)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$SamsungWindowManagerService$CGD8PruMBdW8ckUDVACeUEOYHAw;->f$0:Lcom/android/server/wm/SamsungWindowManagerService;

    iput p2, p0, Lcom/android/server/wm/-$$Lambda$SamsungWindowManagerService$CGD8PruMBdW8ckUDVACeUEOYHAw;->f$1:I

    iput-boolean p3, p0, Lcom/android/server/wm/-$$Lambda$SamsungWindowManagerService$CGD8PruMBdW8ckUDVACeUEOYHAw;->f$2:Z

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 5

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$SamsungWindowManagerService$CGD8PruMBdW8ckUDVACeUEOYHAw;->f$0:Lcom/android/server/wm/SamsungWindowManagerService;

    iget v1, p0, Lcom/android/server/wm/-$$Lambda$SamsungWindowManagerService$CGD8PruMBdW8ckUDVACeUEOYHAw;->f$1:I

    iget-boolean v2, p0, Lcom/android/server/wm/-$$Lambda$SamsungWindowManagerService$CGD8PruMBdW8ckUDVACeUEOYHAw;->f$2:Z

    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-static {v0, v1, v2, p1}, Lcom/android/server/wm/SamsungWindowManagerService;->lambda$takeScreenshotToTargetWindow$4(Lcom/android/server/wm/SamsungWindowManagerService;IZLcom/android/server/wm/WindowState;)Z

    move-result p1

    return p1
.end method
