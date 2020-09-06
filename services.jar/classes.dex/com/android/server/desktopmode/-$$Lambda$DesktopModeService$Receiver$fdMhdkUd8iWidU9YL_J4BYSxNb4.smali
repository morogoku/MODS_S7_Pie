.class public final synthetic Lcom/android/server/desktopmode/-$$Lambda$DesktopModeService$Receiver$fdMhdkUd8iWidU9YL_J4BYSxNb4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/desktopmode/DesktopModeService$Receiver;

.field private final synthetic f$1:Landroid/content/Intent;

.field private final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/desktopmode/DesktopModeService$Receiver;Landroid/content/Intent;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/desktopmode/-$$Lambda$DesktopModeService$Receiver$fdMhdkUd8iWidU9YL_J4BYSxNb4;->f$0:Lcom/android/server/desktopmode/DesktopModeService$Receiver;

    iput-object p2, p0, Lcom/android/server/desktopmode/-$$Lambda$DesktopModeService$Receiver$fdMhdkUd8iWidU9YL_J4BYSxNb4;->f$1:Landroid/content/Intent;

    iput p3, p0, Lcom/android/server/desktopmode/-$$Lambda$DesktopModeService$Receiver$fdMhdkUd8iWidU9YL_J4BYSxNb4;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/desktopmode/-$$Lambda$DesktopModeService$Receiver$fdMhdkUd8iWidU9YL_J4BYSxNb4;->f$0:Lcom/android/server/desktopmode/DesktopModeService$Receiver;

    iget-object v1, p0, Lcom/android/server/desktopmode/-$$Lambda$DesktopModeService$Receiver$fdMhdkUd8iWidU9YL_J4BYSxNb4;->f$1:Landroid/content/Intent;

    iget v2, p0, Lcom/android/server/desktopmode/-$$Lambda$DesktopModeService$Receiver$fdMhdkUd8iWidU9YL_J4BYSxNb4;->f$2:I

    invoke-static {v0, v1, v2}, Lcom/android/server/desktopmode/DesktopModeService$Receiver;->lambda$onReceive$0(Lcom/android/server/desktopmode/DesktopModeService$Receiver;Landroid/content/Intent;I)V

    return-void
.end method
