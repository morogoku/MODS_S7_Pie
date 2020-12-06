.class public final synthetic Lcom/android/server/desktopmode/-$$Lambda$DualModeChanger$Q0b1Feg68BbBqnFYV4nWau1XAUY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/desktopmode/DualModeChanger;

.field private final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/desktopmode/DualModeChanger;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/desktopmode/-$$Lambda$DualModeChanger$Q0b1Feg68BbBqnFYV4nWau1XAUY;->f$0:Lcom/android/server/desktopmode/DualModeChanger;

    iput-boolean p2, p0, Lcom/android/server/desktopmode/-$$Lambda$DualModeChanger$Q0b1Feg68BbBqnFYV4nWau1XAUY;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/desktopmode/-$$Lambda$DualModeChanger$Q0b1Feg68BbBqnFYV4nWau1XAUY;->f$0:Lcom/android/server/desktopmode/DualModeChanger;

    iget-boolean v1, p0, Lcom/android/server/desktopmode/-$$Lambda$DualModeChanger$Q0b1Feg68BbBqnFYV4nWau1XAUY;->f$1:Z

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/DualModeChanger;->lambda$onDesktopDisplayConfigured$0(Lcom/android/server/desktopmode/DualModeChanger;Z)V

    return-void
.end method
