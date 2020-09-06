.class public final synthetic Lcom/android/server/am/-$$Lambda$SideScreenManagerService$-sseH4VyTgZBieL4VRVXw9RdHXk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/am/SideScreenManagerService;

.field private final synthetic f$1:Z

.field private final synthetic f$2:I

.field private final synthetic f$3:Lcom/android/server/am/ActivityDisplay;

.field private final synthetic f$4:Landroid/graphics/Rect;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/SideScreenManagerService;ZILcom/android/server/am/ActivityDisplay;Landroid/graphics/Rect;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/-$$Lambda$SideScreenManagerService$-sseH4VyTgZBieL4VRVXw9RdHXk;->f$0:Lcom/android/server/am/SideScreenManagerService;

    iput-boolean p2, p0, Lcom/android/server/am/-$$Lambda$SideScreenManagerService$-sseH4VyTgZBieL4VRVXw9RdHXk;->f$1:Z

    iput p3, p0, Lcom/android/server/am/-$$Lambda$SideScreenManagerService$-sseH4VyTgZBieL4VRVXw9RdHXk;->f$2:I

    iput-object p4, p0, Lcom/android/server/am/-$$Lambda$SideScreenManagerService$-sseH4VyTgZBieL4VRVXw9RdHXk;->f$3:Lcom/android/server/am/ActivityDisplay;

    iput-object p5, p0, Lcom/android/server/am/-$$Lambda$SideScreenManagerService$-sseH4VyTgZBieL4VRVXw9RdHXk;->f$4:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    iget-object v0, p0, Lcom/android/server/am/-$$Lambda$SideScreenManagerService$-sseH4VyTgZBieL4VRVXw9RdHXk;->f$0:Lcom/android/server/am/SideScreenManagerService;

    iget-boolean v1, p0, Lcom/android/server/am/-$$Lambda$SideScreenManagerService$-sseH4VyTgZBieL4VRVXw9RdHXk;->f$1:Z

    iget v2, p0, Lcom/android/server/am/-$$Lambda$SideScreenManagerService$-sseH4VyTgZBieL4VRVXw9RdHXk;->f$2:I

    iget-object v3, p0, Lcom/android/server/am/-$$Lambda$SideScreenManagerService$-sseH4VyTgZBieL4VRVXw9RdHXk;->f$3:Lcom/android/server/am/ActivityDisplay;

    iget-object v4, p0, Lcom/android/server/am/-$$Lambda$SideScreenManagerService$-sseH4VyTgZBieL4VRVXw9RdHXk;->f$4:Landroid/graphics/Rect;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/am/SideScreenManagerService;->lambda$resizeSideScreenStackWithScale$13(Lcom/android/server/am/SideScreenManagerService;ZILcom/android/server/am/ActivityDisplay;Landroid/graphics/Rect;)V

    return-void
.end method
