.class public final synthetic Lcom/android/server/am/-$$Lambda$SideScreenManagerService$HqkNsgW-Ezgh_Ikvk7enSz0sA-4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/am/SideScreenManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/SideScreenManagerService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/-$$Lambda$SideScreenManagerService$HqkNsgW-Ezgh_Ikvk7enSz0sA-4;->f$0:Lcom/android/server/am/SideScreenManagerService;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/-$$Lambda$SideScreenManagerService$HqkNsgW-Ezgh_Ikvk7enSz0sA-4;->f$0:Lcom/android/server/am/SideScreenManagerService;

    invoke-static {v0}, Lcom/android/server/am/SideScreenManagerService;->lambda$onSideScreenSplitModeDeactivatedLocked$5(Lcom/android/server/am/SideScreenManagerService;)V

    return-void
.end method
