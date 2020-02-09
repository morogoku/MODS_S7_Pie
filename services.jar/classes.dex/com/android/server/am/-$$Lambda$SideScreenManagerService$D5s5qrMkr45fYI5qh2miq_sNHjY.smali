.class public final synthetic Lcom/android/server/am/-$$Lambda$SideScreenManagerService$D5s5qrMkr45fYI5qh2miq_sNHjY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/am/SideScreenManagerService;

.field private final synthetic f$1:Z

.field private final synthetic f$2:Lcom/android/server/am/ActivityDisplay;

.field private final synthetic f$3:I

.field private final synthetic f$4:Lcom/android/server/am/ActivityRecord;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/SideScreenManagerService;ZLcom/android/server/am/ActivityDisplay;ILcom/android/server/am/ActivityRecord;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/-$$Lambda$SideScreenManagerService$D5s5qrMkr45fYI5qh2miq_sNHjY;->f$0:Lcom/android/server/am/SideScreenManagerService;

    iput-boolean p2, p0, Lcom/android/server/am/-$$Lambda$SideScreenManagerService$D5s5qrMkr45fYI5qh2miq_sNHjY;->f$1:Z

    iput-object p3, p0, Lcom/android/server/am/-$$Lambda$SideScreenManagerService$D5s5qrMkr45fYI5qh2miq_sNHjY;->f$2:Lcom/android/server/am/ActivityDisplay;

    iput p4, p0, Lcom/android/server/am/-$$Lambda$SideScreenManagerService$D5s5qrMkr45fYI5qh2miq_sNHjY;->f$3:I

    iput-object p5, p0, Lcom/android/server/am/-$$Lambda$SideScreenManagerService$D5s5qrMkr45fYI5qh2miq_sNHjY;->f$4:Lcom/android/server/am/ActivityRecord;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    iget-object v0, p0, Lcom/android/server/am/-$$Lambda$SideScreenManagerService$D5s5qrMkr45fYI5qh2miq_sNHjY;->f$0:Lcom/android/server/am/SideScreenManagerService;

    iget-boolean v1, p0, Lcom/android/server/am/-$$Lambda$SideScreenManagerService$D5s5qrMkr45fYI5qh2miq_sNHjY;->f$1:Z

    iget-object v2, p0, Lcom/android/server/am/-$$Lambda$SideScreenManagerService$D5s5qrMkr45fYI5qh2miq_sNHjY;->f$2:Lcom/android/server/am/ActivityDisplay;

    iget v3, p0, Lcom/android/server/am/-$$Lambda$SideScreenManagerService$D5s5qrMkr45fYI5qh2miq_sNHjY;->f$3:I

    iget-object v4, p0, Lcom/android/server/am/-$$Lambda$SideScreenManagerService$D5s5qrMkr45fYI5qh2miq_sNHjY;->f$4:Lcom/android/server/am/ActivityRecord;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/am/SideScreenManagerService;->lambda$swapTaskWindowingModeFromSubWindowHandler$9(Lcom/android/server/am/SideScreenManagerService;ZLcom/android/server/am/ActivityDisplay;ILcom/android/server/am/ActivityRecord;)V

    return-void
.end method
