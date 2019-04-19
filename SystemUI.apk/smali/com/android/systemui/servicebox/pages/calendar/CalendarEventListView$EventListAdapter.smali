.class Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView$EventListAdapter;
.super Landroid/widget/BaseAdapter;
.source "CalendarEventListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventListAdapter"
.end annotation


# instance fields
.field mEventList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/servicebox/pages/calendar/CalendarData;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/servicebox/pages/calendar/CalendarData;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView$EventListAdapter;->this$0:Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView$EventListAdapter;->mEventList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView$EventListAdapter;->mEventList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView$EventListAdapter;->mEventList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getEvent(I)Lcom/android/systemui/servicebox/pages/calendar/CalendarData;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView$EventListAdapter;->mEventList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView$EventListAdapter;->mEventList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/servicebox/pages/calendar/CalendarData;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView$EventListAdapter;->mEventList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView$EventListAdapter;->mEventList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    const/4 v0, 0x2

    if-nez p2, :cond_1

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView$EventListAdapter;->this$0:Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;

    invoke-static {v1}, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;->access$300(Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;)I

    move-result v1

    const/4 v2, 0x0

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView$EventListAdapter;->this$0:Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;

    invoke-static {v1}, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;->access$400(Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v3, 0x7f0d01f9

    invoke-virtual {v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView$EventListAdapter;->this$0:Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;

    invoke-static {v1}, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;->access$400(Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v3, 0x7f0d01fa

    invoke-virtual {v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const v1, 0x7f0a04ff

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0a0500

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0a04fe

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView$EventListAdapter;->mEventList:Ljava/util/ArrayList;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView$EventListAdapter;->mEventList:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/servicebox/pages/calendar/CalendarData;

    if-eqz v4, :cond_7

    if-eqz v1, :cond_4

    iget-object v5, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView$EventListAdapter;->this$0:Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;

    invoke-static {v5}, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;->access$300(Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;)I

    move-result v5

    if-nez v5, :cond_2

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView$EventListAdapter;->this$0:Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;

    invoke-virtual {v0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarData;->getFormattedStartTime(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-nez p1, :cond_3

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v5, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView$EventListAdapter;->this$0:Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;

    invoke-virtual {v5}, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f07073f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget v5, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    goto :goto_1

    :cond_2
    iget-object v5, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView$EventListAdapter;->this$0:Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;

    invoke-static {v5}, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;->access$300(Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;)I

    move-result v5

    if-ne v5, v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView$EventListAdapter;->this$0:Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;

    invoke-virtual {v0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarData;->getFormattedStartEndTime(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "servicebox_today_event_time_"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTransitionName(Ljava/lang/String;)V

    :cond_4
    if-eqz v2, :cond_7

    if-nez p1, :cond_5

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView$EventListAdapter;->this$0:Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;

    invoke-static {v0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;->access$300(Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;)I

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x0

    iget-object v5, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView$EventListAdapter;->this$0:Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;

    invoke-virtual {v5}, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070744

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v2, v0, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_2

    :cond_5
    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView$EventListAdapter;->this$0:Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;

    invoke-static {v0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;->access$300(Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;)I

    move-result v0

    if-nez v0, :cond_6

    if-eqz v3, :cond_6

    const v0, 0x7f0a04fd

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v6, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView$EventListAdapter;->this$0:Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;

    invoke-virtual {v6}, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f07074c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView$EventListAdapter;->this$0:Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;

    invoke-virtual {v0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarData;->getFormattedTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "servicebox_today_event_title_"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTransitionName(Ljava/lang/String;)V

    :cond_7
    return-object p2
.end method
