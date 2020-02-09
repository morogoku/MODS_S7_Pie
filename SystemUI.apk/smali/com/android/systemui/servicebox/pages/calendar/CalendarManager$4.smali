.class Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$4;
.super Ljava/lang/Object;
.source "CalendarManager.java"

# interfaces
.implements Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$LoadEventListCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$4;->this$0:Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/servicebox/pages/calendar/CalendarData;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$4;->this$0:Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;

    invoke-static {v0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->access$600(Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$4;->this$0:Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->access$602(Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$4;->this$0:Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;

    invoke-static {v0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->access$600(Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;)Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$4;->this$0:Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;

    invoke-static {v1}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->access$600(Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$4;->this$0:Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;

    invoke-static {v1, p1}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->access$700(Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;Ljava/util/ArrayList;)V

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$4;->this$0:Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$4;->this$0:Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;

    invoke-static {v2, p1}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->access$800(Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;Ljava/util/ArrayList;)Lcom/android/systemui/servicebox/pages/calendar/CalendarData;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->access$900(Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;Lcom/android/systemui/servicebox/pages/calendar/CalendarData;)V

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$4;->this$0:Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;

    invoke-static {v1}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->access$600(Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$4;->this$0:Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;

    invoke-static {v1}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->access$1000(Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;)V

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$4;->this$0:Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;

    invoke-virtual {v0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->notifyEventChanged()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
