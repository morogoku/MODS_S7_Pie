.class Lcom/android/server/desktopmode/BootInitBlocker$1;
.super Ljava/lang/Object;
.source "BootInitBlocker.java"

# interfaces
.implements Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlocker;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/desktopmode/BootInitBlocker;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/desktopmode/IStateManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/desktopmode/BootInitBlocker;


# direct methods
.method constructor <init>(Lcom/android/server/desktopmode/BootInitBlocker;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/desktopmode/BootInitBlocker$1;->this$0:Lcom/android/server/desktopmode/BootInitBlocker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBlocked()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method
