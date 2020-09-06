.class public Lcom/android/server/enterprise/storage/EnterpriseXmlParser;
.super Ljava/lang/Object;
.source "EnterpriseXmlParser.java"


# static fields
.field private static final ATTR_DEFAULT:Ljava/lang/String; = "default"

.field private static final ATTR_FOREIGN_KEY_NAME:Ljava/lang/String; = "foreignkeyname"

.field private static final ATTR_FOREIGN_REFER_KEY:Ljava/lang/String; = "foreignreferkey"

.field private static final ATTR_FOREIGN_REFER_TABLE:Ljava/lang/String; = "foreignrefertable"

.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_PRIMARY_KEY:Ljava/lang/String; = "primarykey"

.field private static final ATTR_PROPERTIES:Ljava/lang/String; = "properties"

.field private static final ATTR_TYPE:Ljava/lang/String; = "type"

.field private static final COLUMN:Ljava/lang/String; = "column"

.field private static final TABLE:Ljava/lang/String; = "table"

.field private static final TAG:Ljava/lang/String; = "EnterpriseXmlParser"


# instance fields
.field private final mCallback:Lcom/android/server/enterprise/storage/TableCallback;

.field private final mParser:Landroid/content/res/XmlResourceParser;


# direct methods
.method public constructor <init>(Landroid/content/res/XmlResourceParser;Lcom/android/server/enterprise/storage/TableCallback;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/storage/EnterpriseXmlParser;->mParser:Landroid/content/res/XmlResourceParser;

    iput-object p2, p0, Lcom/android/server/enterprise/storage/EnterpriseXmlParser;->mCallback:Lcom/android/server/enterprise/storage/TableCallback;

    return-void
.end method

.method private getType(Ljava/lang/String;)Lcom/android/server/enterprise/storage/Column$DATA_TYPE;
    .registers 3

    if-nez p1, :cond_5

    sget-object v0, Lcom/android/server/enterprise/storage/Column$DATA_TYPE;->BLOB:Lcom/android/server/enterprise/storage/Column$DATA_TYPE;

    return-object v0

    :cond_5
    const-string/jumbo v0, "int"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    sget-object v0, Lcom/android/server/enterprise/storage/Column$DATA_TYPE;->INTEGER:Lcom/android/server/enterprise/storage/Column$DATA_TYPE;

    return-object v0

    :cond_11
    const-string/jumbo v0, "text"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    sget-object v0, Lcom/android/server/enterprise/storage/Column$DATA_TYPE;->TEXT:Lcom/android/server/enterprise/storage/Column$DATA_TYPE;

    return-object v0

    :cond_1d
    const-string/jumbo v0, "numeric"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    sget-object v0, Lcom/android/server/enterprise/storage/Column$DATA_TYPE;->NUMERIC:Lcom/android/server/enterprise/storage/Column$DATA_TYPE;

    return-object v0

    :cond_29
    const-string/jumbo v0, "real"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_35

    sget-object v0, Lcom/android/server/enterprise/storage/Column$DATA_TYPE;->REAL:Lcom/android/server/enterprise/storage/Column$DATA_TYPE;

    return-object v0

    :cond_35
    sget-object v0, Lcom/android/server/enterprise/storage/Column$DATA_TYPE;->BLOB:Lcom/android/server/enterprise/storage/Column$DATA_TYPE;

    return-object v0
.end method

.method private isPrimaryKey(Ljava/lang/String;)Z
    .registers 3

    if-eqz p1, :cond_d

    const-string/jumbo v0, "true"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method


# virtual methods
.method public parseXML()V
    .registers 12

    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/storage/EnterpriseXmlParser;->mParser:Landroid/content/res/XmlResourceParser;

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v0

    const/4 v1, 0x0

    move v2, v0

    move-object v0, v1

    :goto_9
    const/4 v3, 0x1

    if-eq v2, v3, :cond_b4

    packed-switch v2, :pswitch_data_c0

    goto/16 :goto_ab

    :pswitch_11
    iget-object v3, p0, Lcom/android/server/enterprise/storage/EnterpriseXmlParser;->mParser:Landroid/content/res/XmlResourceParser;

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "table"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_ab

    if-eqz v0, :cond_ab

    iget-object v4, p0, Lcom/android/server/enterprise/storage/EnterpriseXmlParser;->mCallback:Lcom/android/server/enterprise/storage/TableCallback;

    invoke-interface {v4, v0}, Lcom/android/server/enterprise/storage/TableCallback;->onTableFound(Lcom/android/server/enterprise/storage/Table;)V

    const/4 v0, 0x0

    goto/16 :goto_ab

    :pswitch_2a
    iget-object v3, p0, Lcom/android/server/enterprise/storage/EnterpriseXmlParser;->mParser:Landroid/content/res/XmlResourceParser;

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "table"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_63

    new-instance v4, Lcom/android/server/enterprise/storage/Table;

    iget-object v5, p0, Lcom/android/server/enterprise/storage/EnterpriseXmlParser;->mParser:Landroid/content/res/XmlResourceParser;

    const-string/jumbo v6, "name"

    invoke-interface {v5, v1, v6}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/enterprise/storage/EnterpriseXmlParser;->mParser:Landroid/content/res/XmlResourceParser;

    const-string/jumbo v7, "foreignrefertable"

    invoke-interface {v6, v1, v7}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/enterprise/storage/EnterpriseXmlParser;->mParser:Landroid/content/res/XmlResourceParser;

    const-string/jumbo v8, "foreignreferkey"

    invoke-interface {v7, v1, v8}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/enterprise/storage/EnterpriseXmlParser;->mParser:Landroid/content/res/XmlResourceParser;

    const-string/jumbo v9, "foreignkeyname"

    invoke-interface {v8, v1, v9}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/android/server/enterprise/storage/Table;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v4

    :cond_63
    const-string v4, "column"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_aa

    if-eqz v0, :cond_aa

    new-instance v4, Lcom/android/server/enterprise/storage/Column;

    iget-object v5, p0, Lcom/android/server/enterprise/storage/EnterpriseXmlParser;->mParser:Landroid/content/res/XmlResourceParser;

    const-string/jumbo v6, "name"

    invoke-interface {v5, v1, v6}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v5, p0, Lcom/android/server/enterprise/storage/EnterpriseXmlParser;->mParser:Landroid/content/res/XmlResourceParser;

    const-string/jumbo v7, "type"

    invoke-interface {v5, v1, v7}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/enterprise/storage/EnterpriseXmlParser;->getType(Ljava/lang/String;)Lcom/android/server/enterprise/storage/Column$DATA_TYPE;

    move-result-object v7

    iget-object v5, p0, Lcom/android/server/enterprise/storage/EnterpriseXmlParser;->mParser:Landroid/content/res/XmlResourceParser;

    const-string/jumbo v8, "primarykey"

    invoke-interface {v5, v1, v8}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/enterprise/storage/EnterpriseXmlParser;->isPrimaryKey(Ljava/lang/String;)Z

    move-result v8

    iget-object v5, p0, Lcom/android/server/enterprise/storage/EnterpriseXmlParser;->mParser:Landroid/content/res/XmlResourceParser;

    const-string/jumbo v9, "properties"

    invoke-interface {v5, v1, v9}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iget-object v5, p0, Lcom/android/server/enterprise/storage/EnterpriseXmlParser;->mParser:Landroid/content/res/XmlResourceParser;

    const-string v10, "default"

    invoke-interface {v5, v1, v10}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v5, v4

    invoke-direct/range {v5 .. v10}, Lcom/android/server/enterprise/storage/Column;-><init>(Ljava/lang/String;Lcom/android/server/enterprise/storage/Column$DATA_TYPE;ZLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/storage/Table;->addColumn(Lcom/android/server/enterprise/storage/Column;)V

    :cond_aa
    nop

    :cond_ab
    :goto_ab
    iget-object v3, p0, Lcom/android/server/enterprise/storage/EnterpriseXmlParser;->mParser:Landroid/content/res/XmlResourceParser;

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v3
    :try_end_b1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b1} :catch_b5

    move v2, v3

    goto/16 :goto_9

    :cond_b4
    goto :goto_be

    :catch_b5
    move-exception v0

    const-string v1, "EnterpriseXmlParser"

    const-string/jumbo v2, "parseXML EX:"

    invoke-static {v1, v2, v0}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_be
    return-void

    nop

    :pswitch_data_c0
    .packed-switch 0x2
        :pswitch_2a
        :pswitch_11
    .end packed-switch
.end method
