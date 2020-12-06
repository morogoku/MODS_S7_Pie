.class public final synthetic Lcom/android/systemui/sidescreen/applist/view/-$$Lambda$ItemListView$3FSRHrlkJSJqc-DbAKRChdi8BvI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic f$0:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/sidescreen/applist/view/-$$Lambda$ItemListView$3FSRHrlkJSJqc-DbAKRChdi8BvI;->f$0:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/sidescreen/applist/view/-$$Lambda$ItemListView$3FSRHrlkJSJqc-DbAKRChdi8BvI;->f$0:Ljava/util/List;

    check-cast p1, Lcom/android/systemui/sidescreen/applist/model/ItemInfo;

    invoke-static {v0, p1}, Lcom/android/systemui/sidescreen/applist/view/ItemListView;->lambda$exceptOtherWindowingModeVisibleTasks$1(Ljava/util/List;Lcom/android/systemui/sidescreen/applist/model/ItemInfo;)Z

    move-result p1

    return p1
.end method
