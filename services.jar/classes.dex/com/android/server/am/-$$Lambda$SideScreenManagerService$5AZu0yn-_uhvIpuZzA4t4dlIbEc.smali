.class public final synthetic Lcom/android/server/am/-$$Lambda$SideScreenManagerService$5AZu0yn-_uhvIpuZzA4t4dlIbEc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/am/SideScreenManagerService;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/SideScreenManagerService;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/-$$Lambda$SideScreenManagerService$5AZu0yn-_uhvIpuZzA4t4dlIbEc;->f$0:Lcom/android/server/am/SideScreenManagerService;

    iput p2, p0, Lcom/android/server/am/-$$Lambda$SideScreenManagerService$5AZu0yn-_uhvIpuZzA4t4dlIbEc;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/am/-$$Lambda$SideScreenManagerService$5AZu0yn-_uhvIpuZzA4t4dlIbEc;->f$0:Lcom/android/server/am/SideScreenManagerService;

    iget v1, p0, Lcom/android/server/am/-$$Lambda$SideScreenManagerService$5AZu0yn-_uhvIpuZzA4t4dlIbEc;->f$1:I

    invoke-static {v0, v1}, Lcom/android/server/am/SideScreenManagerService;->lambda$notifySideScreenImeVisibilityChanged$14(Lcom/android/server/am/SideScreenManagerService;I)V

    return-void
.end method
