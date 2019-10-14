.class Lcom/samsung/context/sdk/samsunganalytics/a/g/b/b$1;
.super Lcom/samsung/context/sdk/samsunganalytics/a/d/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/context/sdk/samsunganalytics/a/g/b/b;->d(Ljava/util/Map;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/samsung/context/sdk/samsunganalytics/a/g/b/b;


# direct methods
.method constructor <init>(Lcom/samsung/context/sdk/samsunganalytics/a/g/b/b;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/g/b/b$1;->b:Lcom/samsung/context/sdk/samsunganalytics/a/g/b/b;

    iput p2, p0, Lcom/samsung/context/sdk/samsunganalytics/a/g/b/b$1;->a:I

    invoke-direct {p0}, Lcom/samsung/context/sdk/samsunganalytics/a/d/a;-><init>()V

    return-void
.end method


# virtual methods
.method public b(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/g/b/b$1;->b:Lcom/samsung/context/sdk/samsunganalytics/a/g/b/b;

    invoke-static {p1}, Lcom/samsung/context/sdk/samsunganalytics/a/g/b/b;->a(Lcom/samsung/context/sdk/samsunganalytics/a/g/b/b;)Lcom/samsung/context/sdk/samsunganalytics/a/g/c/a;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-string p2, ""

    invoke-virtual {p1, v0, v1, p2, p3}, Lcom/samsung/context/sdk/samsunganalytics/a/g/c/a;->a(JLjava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/g/b/b$1;->b:Lcom/samsung/context/sdk/samsunganalytics/a/g/b/b;

    invoke-static {p1}, Lcom/samsung/context/sdk/samsunganalytics/a/g/b/b;->b(Lcom/samsung/context/sdk/samsunganalytics/a/g/b/b;)Landroid/content/Context;

    move-result-object p1

    iget p2, p0, Lcom/samsung/context/sdk/samsunganalytics/a/g/b/b$1;->a:I

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object p3

    array-length p3, p3

    mul-int/lit8 p3, p3, -0x1

    invoke-static {p1, p2, p3}, Lcom/samsung/context/sdk/samsunganalytics/a/e/d;->b(Landroid/content/Context;II)V

    return-void
.end method
