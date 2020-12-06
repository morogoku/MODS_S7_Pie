.class public final synthetic Lcom/android/server/am/-$$Lambda$SideScreenManagerService$6rHxVZBPPUUuJGspsxKrUdXN-Qc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/am/SideScreenManagerService;

.field private final synthetic f$1:Landroid/graphics/Rect;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/SideScreenManagerService;Landroid/graphics/Rect;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/-$$Lambda$SideScreenManagerService$6rHxVZBPPUUuJGspsxKrUdXN-Qc;->f$0:Lcom/android/server/am/SideScreenManagerService;

    iput-object p2, p0, Lcom/android/server/am/-$$Lambda$SideScreenManagerService$6rHxVZBPPUUuJGspsxKrUdXN-Qc;->f$1:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/am/-$$Lambda$SideScreenManagerService$6rHxVZBPPUUuJGspsxKrUdXN-Qc;->f$0:Lcom/android/server/am/SideScreenManagerService;

    iget-object v1, p0, Lcom/android/server/am/-$$Lambda$SideScreenManagerService$6rHxVZBPPUUuJGspsxKrUdXN-Qc;->f$1:Landroid/graphics/Rect;

    invoke-static {v0, v1}, Lcom/android/server/am/SideScreenManagerService;->lambda$resizeSideScreenLocked$7(Lcom/android/server/am/SideScreenManagerService;Landroid/graphics/Rect;)V

    return-void
.end method
