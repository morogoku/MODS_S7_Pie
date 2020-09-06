.class public final synthetic Lcom/android/server/desktopmode/-$$Lambda$HardwareManager$NhSUc7KgN6diP6o-jnX3J3hbGBE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/desktopmode/HardwareManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/desktopmode/HardwareManager;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/desktopmode/-$$Lambda$HardwareManager$NhSUc7KgN6diP6o-jnX3J3hbGBE;->f$0:Lcom/android/server/desktopmode/HardwareManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/desktopmode/-$$Lambda$HardwareManager$NhSUc7KgN6diP6o-jnX3J3hbGBE;->f$0:Lcom/android/server/desktopmode/HardwareManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/HardwareManager;->lambda$checkExternalDisplayConnected$0(Lcom/android/server/desktopmode/HardwareManager;)V

    return-void
.end method
