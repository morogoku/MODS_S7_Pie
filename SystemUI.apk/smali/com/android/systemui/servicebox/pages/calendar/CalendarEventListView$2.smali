.class Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView$2;
.super Ljava/lang/Object;
.source "CalendarEventListView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;->updateCalendarInfo(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;


# direct methods
.method constructor <init>(Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView$2;->this$0:Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView$2;->this$0:Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;

    invoke-static {v1}, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;->access$000(Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;)Lcom/android/systemui/servicebox/KeyguardStatusCallback;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView$2;->this$0:Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;

    invoke-static {v1}, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;->access$100(Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;)Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView$EventListAdapter;

    move-result-object v1

    move-object v2, v0

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView$EventListAdapter;->getEvent(I)Lcom/android/systemui/servicebox/pages/calendar/CalendarData;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView$2;->this$0:Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;

    invoke-static {v2}, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;->access$000(Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;)Lcom/android/systemui/servicebox/KeyguardStatusCallback;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView$2;->this$0:Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;

    invoke-virtual {v3}, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/systemui/servicebox/pages/calendar/CalendarData;->getCalendarActivityIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Lcom/android/systemui/servicebox/KeyguardStatusCallback;->startActivity(Landroid/content/Intent;Z)V

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView$2;->this$0:Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;

    invoke-static {v2}, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;->access$200(Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;)V

    return-void

    :cond_2
    :goto_0
    return-void
.end method
