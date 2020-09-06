.class public final synthetic Lcom/android/server/am/-$$Lambda$SideScreenManagerService$6TBHe5qNdss4icH96dcIuXr44qw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/am/SideScreenManagerService;

.field private final synthetic f$1:Landroid/graphics/Rect;

.field private final synthetic f$2:Landroid/graphics/Rect;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/SideScreenManagerService;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/-$$Lambda$SideScreenManagerService$6TBHe5qNdss4icH96dcIuXr44qw;->f$0:Lcom/android/server/am/SideScreenManagerService;

    iput-object p2, p0, Lcom/android/server/am/-$$Lambda$SideScreenManagerService$6TBHe5qNdss4icH96dcIuXr44qw;->f$1:Landroid/graphics/Rect;

    iput-object p3, p0, Lcom/android/server/am/-$$Lambda$SideScreenManagerService$6TBHe5qNdss4icH96dcIuXr44qw;->f$2:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/am/-$$Lambda$SideScreenManagerService$6TBHe5qNdss4icH96dcIuXr44qw;->f$0:Lcom/android/server/am/SideScreenManagerService;

    iget-object v1, p0, Lcom/android/server/am/-$$Lambda$SideScreenManagerService$6TBHe5qNdss4icH96dcIuXr44qw;->f$1:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/am/-$$Lambda$SideScreenManagerService$6TBHe5qNdss4icH96dcIuXr44qw;->f$2:Landroid/graphics/Rect;

    invoke-static {v0, v1, v2}, Lcom/android/server/am/SideScreenManagerService;->lambda$resizeSideScreenStackAndOtherStacksLocked$11(Lcom/android/server/am/SideScreenManagerService;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-void
.end method
