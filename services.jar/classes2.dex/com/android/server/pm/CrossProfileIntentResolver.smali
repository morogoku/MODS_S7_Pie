.class Lcom/android/server/pm/CrossProfileIntentResolver;
.super Lcom/android/server/IntentResolver;
.source "CrossProfileIntentResolver.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/IntentResolver<",
        "Lcom/android/server/pm/CrossProfileIntentFilter;",
        "Lcom/android/server/pm/CrossProfileIntentFilter;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/IntentResolver;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic isPackageForFilter(Ljava/lang/String;Landroid/content/IntentFilter;)Z
    .registers 3

    check-cast p2, Lcom/android/server/pm/CrossProfileIntentFilter;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/CrossProfileIntentResolver;->isPackageForFilter(Ljava/lang/String;Lcom/android/server/pm/CrossProfileIntentFilter;)Z

    move-result p1

    return p1
.end method

.method protected isPackageForFilter(Ljava/lang/String;Lcom/android/server/pm/CrossProfileIntentFilter;)Z
    .registers 4

    const/4 v0, 0x0

    return v0
.end method

.method protected bridge synthetic newArray(I)[Landroid/content/IntentFilter;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/pm/CrossProfileIntentResolver;->newArray(I)[Lcom/android/server/pm/CrossProfileIntentFilter;

    move-result-object p1

    return-object p1
.end method

.method protected newArray(I)[Lcom/android/server/pm/CrossProfileIntentFilter;
    .registers 3

    new-array v0, p1, [Lcom/android/server/pm/CrossProfileIntentFilter;

    return-object v0
.end method

.method protected sortResults(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/pm/CrossProfileIntentFilter;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
