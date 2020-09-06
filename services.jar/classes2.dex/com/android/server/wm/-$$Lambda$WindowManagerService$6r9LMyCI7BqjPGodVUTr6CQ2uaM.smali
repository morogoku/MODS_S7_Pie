.class public final synthetic Lcom/android/server/wm/-$$Lambda$WindowManagerService$6r9LMyCI7BqjPGodVUTr6CQ2uaM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic f$0:I

.field private final synthetic f$1:I

.field private final synthetic f$2:Landroid/os/IBinder;


# direct methods
.method public synthetic constructor <init>(IILandroid/os/IBinder;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/wm/-$$Lambda$WindowManagerService$6r9LMyCI7BqjPGodVUTr6CQ2uaM;->f$0:I

    iput p2, p0, Lcom/android/server/wm/-$$Lambda$WindowManagerService$6r9LMyCI7BqjPGodVUTr6CQ2uaM;->f$1:I

    iput-object p3, p0, Lcom/android/server/wm/-$$Lambda$WindowManagerService$6r9LMyCI7BqjPGodVUTr6CQ2uaM;->f$2:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 5

    iget v0, p0, Lcom/android/server/wm/-$$Lambda$WindowManagerService$6r9LMyCI7BqjPGodVUTr6CQ2uaM;->f$0:I

    iget v1, p0, Lcom/android/server/wm/-$$Lambda$WindowManagerService$6r9LMyCI7BqjPGodVUTr6CQ2uaM;->f$1:I

    iget-object v2, p0, Lcom/android/server/wm/-$$Lambda$WindowManagerService$6r9LMyCI7BqjPGodVUTr6CQ2uaM;->f$2:Landroid/os/IBinder;

    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-static {v0, v1, v2, p1}, Lcom/android/server/wm/WindowManagerService;->lambda$findTargetSmartClipWindow$9(IILandroid/os/IBinder;Lcom/android/server/wm/WindowState;)Z

    move-result p1

    return p1
.end method
