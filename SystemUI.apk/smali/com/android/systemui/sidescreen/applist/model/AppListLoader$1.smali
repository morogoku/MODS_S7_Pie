.class Lcom/android/systemui/sidescreen/applist/model/AppListLoader$1;
.super Ljava/lang/Object;
.source "AppListLoader.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/sidescreen/applist/model/AppListLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/systemui/sidescreen/applist/model/AppInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/sidescreen/applist/model/AppListLoader;


# direct methods
.method constructor <init>(Lcom/android/systemui/sidescreen/applist/model/AppListLoader;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/sidescreen/applist/model/AppListLoader$1;->this$0:Lcom/android/systemui/sidescreen/applist/model/AppListLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/systemui/sidescreen/applist/model/AppInfo;Lcom/android/systemui/sidescreen/applist/model/AppInfo;)I
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p1, Lcom/android/systemui/sidescreen/applist/model/AppInfo;->title:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p2, Lcom/android/systemui/sidescreen/applist/model/AppInfo;->title:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    iget-object v2, p1, Lcom/android/systemui/sidescreen/applist/model/AppInfo;->title:Ljava/lang/String;

    iget-object v3, p2, Lcom/android/systemui/sidescreen/applist/model/AppInfo;->title:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    :cond_0
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/systemui/sidescreen/applist/model/AppInfo;

    check-cast p2, Lcom/android/systemui/sidescreen/applist/model/AppInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/sidescreen/applist/model/AppListLoader$1;->compare(Lcom/android/systemui/sidescreen/applist/model/AppInfo;Lcom/android/systemui/sidescreen/applist/model/AppInfo;)I

    move-result p1

    return p1
.end method
