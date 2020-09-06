.class public final synthetic Lcom/android/server/wm/-$$Lambda$SideScreenManagerInternal$uW9RMvdq6wwqfzQlDihaJpKGhQk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/wm/SideScreenManagerInternal;

.field private final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/SideScreenManagerInternal;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$SideScreenManagerInternal$uW9RMvdq6wwqfzQlDihaJpKGhQk;->f$0:Lcom/android/server/wm/SideScreenManagerInternal;

    iput-boolean p2, p0, Lcom/android/server/wm/-$$Lambda$SideScreenManagerInternal$uW9RMvdq6wwqfzQlDihaJpKGhQk;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$SideScreenManagerInternal$uW9RMvdq6wwqfzQlDihaJpKGhQk;->f$0:Lcom/android/server/wm/SideScreenManagerInternal;

    iget-boolean v1, p0, Lcom/android/server/wm/-$$Lambda$SideScreenManagerInternal$uW9RMvdq6wwqfzQlDihaJpKGhQk;->f$1:Z

    invoke-static {v0, v1}, Lcom/android/server/wm/SideScreenManagerInternal;->lambda$notifyDockedStackMinimizedChanged$5(Lcom/android/server/wm/SideScreenManagerInternal;Z)V

    return-void
.end method
