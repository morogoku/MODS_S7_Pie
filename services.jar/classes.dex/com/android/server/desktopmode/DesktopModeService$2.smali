.class Lcom/android/server/desktopmode/DesktopModeService$2;
.super Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;
.source "DesktopModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/DesktopModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/desktopmode/DesktopModeService;


# direct methods
.method constructor <init>(Lcom/android/server/desktopmode/DesktopModeService;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService$2;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-direct {p0, p2}, Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method onSettingChanged(Ljava/lang/String;I)V
    .registers 6

    const/4 v0, -0x1

    if-nez p1, :cond_5

    move v1, v0

    goto :goto_9

    :cond_5
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    :goto_9
    if-ne v1, v0, :cond_c

    return-void

    :cond_c
    if-nez v1, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService$2;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-virtual {v2, v0}, Lcom/android/server/desktopmode/DesktopModeService;->scheduleUpdateDesktopMode(Z)V

    return-void
.end method
