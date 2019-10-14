.class public final synthetic Lcom/android/server/desktopmode/-$$Lambda$DesktopModeService$C-_YfvOrJ0K1F4l9EKhOeptS7nM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/desktopmode/DesktopModeService;

.field private final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/desktopmode/DesktopModeService;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/desktopmode/-$$Lambda$DesktopModeService$C-_YfvOrJ0K1F4l9EKhOeptS7nM;->f$0:Lcom/android/server/desktopmode/DesktopModeService;

    iput-boolean p2, p0, Lcom/android/server/desktopmode/-$$Lambda$DesktopModeService$C-_YfvOrJ0K1F4l9EKhOeptS7nM;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/desktopmode/-$$Lambda$DesktopModeService$C-_YfvOrJ0K1F4l9EKhOeptS7nM;->f$0:Lcom/android/server/desktopmode/DesktopModeService;

    iget-boolean v1, p0, Lcom/android/server/desktopmode/-$$Lambda$DesktopModeService$C-_YfvOrJ0K1F4l9EKhOeptS7nM;->f$1:Z

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/DesktopModeService;->lambda$scheduleUpdateDesktopMode$0(Lcom/android/server/desktopmode/DesktopModeService;Z)V

    return-void
.end method
