.class public Lcom/samsung/context/sdk/samsunganalytics/a/h/c;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/h/c;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/context/sdk/samsunganalytics/a/i/c;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "AppPrefs"

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/h/c;->a:Ljava/util/Set;

    sget-object p1, Lcom/samsung/context/sdk/samsunganalytics/a/i/b$a;->b:Lcom/samsung/context/sdk/samsunganalytics/a/i/b$a;

    invoke-virtual {p1}, Lcom/samsung/context/sdk/samsunganalytics/a/i/b$a;->b()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/h/c;->c:Ljava/lang/String;

    sget-object p1, Lcom/samsung/context/sdk/samsunganalytics/a/i/b$a;->b:Lcom/samsung/context/sdk/samsunganalytics/a/i/b$a;

    invoke-virtual {p1}, Lcom/samsung/context/sdk/samsunganalytics/a/i/b$a;->a()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/h/c;->d:Ljava/lang/String;

    sget-object p1, Lcom/samsung/context/sdk/samsunganalytics/a/i/b$a;->c:Lcom/samsung/context/sdk/samsunganalytics/a/i/b$a;

    invoke-virtual {p1}, Lcom/samsung/context/sdk/samsunganalytics/a/i/b$a;->a()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/h/c;->e:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/lang/String;)Landroid/content/SharedPreferences;
    .locals 2

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/h/c;->b:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    return-object p1
.end method

.method private b()Ljava/lang/String;
    .locals 9

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/h/c;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const-string v0, ""

    iget-object v2, p0, Lcom/samsung/context/sdk/samsunganalytics/a/h/c;->a:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/samsung/context/sdk/samsunganalytics/a/h/c;->a(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-direct {p0, v3}, Lcom/samsung/context/sdk/samsunganalytics/a/h/c;->b(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v4}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/h/c;->d:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-class v7, Ljava/lang/Integer;

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    const-class v7, Ljava/lang/Float;

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    const-class v7, Ljava/lang/Long;

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    const-class v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    const-class v7, Ljava/lang/Boolean;

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_2

    :cond_4
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/h/c;->c:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v6, v1

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/samsung/context/sdk/samsunganalytics/a/h/c;->e:Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_7
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/h/c;->c:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_8
    return-object v0
.end method

.method private b(Ljava/lang/String;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/h/c;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/context/sdk/samsunganalytics/a/i/c;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 4

    invoke-direct {p0}, Lcom/samsung/context/sdk/samsunganalytics/a/h/c;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SASettingPref"

    invoke-direct {p0, v1}, Lcom/samsung/context/sdk/samsunganalytics/a/h/c;->a(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/samsung/context/sdk/samsunganalytics/a/i/b$a;->b:Lcom/samsung/context/sdk/samsunganalytics/a/i/b$a;

    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/a/i/b$a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/samsung/context/sdk/samsunganalytics/a/i/b;

    invoke-direct {v0}, Lcom/samsung/context/sdk/samsunganalytics/a/i/b;-><init>()V

    sget-object v3, Lcom/samsung/context/sdk/samsunganalytics/a/i/b$a;->b:Lcom/samsung/context/sdk/samsunganalytics/a/i/b$a;

    invoke-virtual {v0, v1, v3}, Lcom/samsung/context/sdk/samsunganalytics/a/i/b;->a(Ljava/util/Map;Lcom/samsung/context/sdk/samsunganalytics/a/i/b$a;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v0, Lcom/samsung/context/sdk/samsunganalytics/a/i/b;

    invoke-direct {v0}, Lcom/samsung/context/sdk/samsunganalytics/a/i/b;-><init>()V

    sget-object v2, Lcom/samsung/context/sdk/samsunganalytics/a/i/b$a;->b:Lcom/samsung/context/sdk/samsunganalytics/a/i/b$a;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/context/sdk/samsunganalytics/a/i/b;->a(Ljava/util/Map;Lcom/samsung/context/sdk/samsunganalytics/a/i/b$a;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/context/sdk/samsunganalytics/a/h/c;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
