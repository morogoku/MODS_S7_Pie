.class final Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "AdaptiveDisplaySolutionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;Landroid/os/Handler;)V
    .registers 3

    iput-object p1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService$SettingsObserver;->this$0:Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 6

    const-string v0, "AdaptiveDisplaySolutionService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SettingsObserver( onChange "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService$SettingsObserver;->this$0:Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;

    # invokes: Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->setting_is_changed()V
    invoke-static {v0}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->access$500(Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;)V

    return-void
.end method
