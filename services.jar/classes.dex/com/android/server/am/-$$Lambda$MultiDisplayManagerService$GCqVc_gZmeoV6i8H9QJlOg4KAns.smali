.class public final synthetic Lcom/android/server/am/-$$Lambda$MultiDisplayManagerService$GCqVc_gZmeoV6i8H9QJlOg4KAns;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/am/MultiDisplayManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/MultiDisplayManagerService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/-$$Lambda$MultiDisplayManagerService$GCqVc_gZmeoV6i8H9QJlOg4KAns;->f$0:Lcom/android/server/am/MultiDisplayManagerService;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/-$$Lambda$MultiDisplayManagerService$GCqVc_gZmeoV6i8H9QJlOg4KAns;->f$0:Lcom/android/server/am/MultiDisplayManagerService;

    invoke-static {v0}, Lcom/android/server/am/MultiDisplayManagerService;->lambda$updateDexModeIfNeededLocked$0(Lcom/android/server/am/MultiDisplayManagerService;)V

    return-void
.end method
