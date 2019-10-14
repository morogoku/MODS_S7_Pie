.class Lcom/android/server/am/DynamicHiddenApp$2;
.super Ljava/lang/Object;
.source "DynamicHiddenApp.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/DynamicHiddenApp;->getTopHotProcess()Landroid/util/ArrayMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/util/Map$Entry<",
        "Ljava/lang/String;",
        "Lcom/android/server/am/DynamicHiddenApp$HotnessValue;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/DynamicHiddenApp;


# direct methods
.method constructor <init>(Lcom/android/server/am/DynamicHiddenApp;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/am/DynamicHiddenApp$2;->this$0:Lcom/android/server/am/DynamicHiddenApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Ljava/util/Map$Entry;

    check-cast p2, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/DynamicHiddenApp$2;->compare(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)I

    move-result p1

    return p1
.end method

.method public compare(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/DynamicHiddenApp$HotnessValue;",
            ">;",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/DynamicHiddenApp$HotnessValue;",
            ">;)I"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;->getHotness(I)I

    move-result v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;

    invoke-virtual {v2, v1}, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;->getHotness(I)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method
