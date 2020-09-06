.class Lcom/android/server/utils/sysfwutil/DexObserver$1;
.super Landroid/os/UEventObserver;
.source "DexObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/utils/sysfwutil/DexObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/utils/sysfwutil/DexObserver;


# direct methods
.method constructor <init>(Lcom/android/server/utils/sysfwutil/DexObserver;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/utils/sysfwutil/DexObserver$1;->this$0:Lcom/android/server/utils/sysfwutil/DexObserver;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .registers 6

    :try_start_0
    const-string v0, "DexObserverFW"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UEventObserver, event : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/utils/sysfwutil/DexObserver$1;->this$0:Lcom/android/server/utils/sysfwutil/DexObserver;

    const-string v1, "SWITCH_STATE"

    invoke-virtual {p1, v1}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    # invokes: Lcom/android/server/utils/sysfwutil/DexObserver;->setDexState(ILandroid/os/UEventObserver$UEvent;)V
    invoke-static {v0, v1, p1}, Lcom/android/server/utils/sysfwutil/DexObserver;->access$000(Lcom/android/server/utils/sysfwutil/DexObserver;ILandroid/os/UEventObserver$UEvent;)V
    :try_end_25
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_25} :catch_26

    goto :goto_3d

    :catch_26
    move-exception v0

    const-string v1, "DexObserverFW"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not parse switch state from event "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/utils/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3d
    return-void
.end method
