<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
                xmlns:html="http://www.w3.org/TR/REC-html40"
                xmlns:sitemap="http://www.sitemaps.org/schemas/sitemap/0.9"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" version="1.0" encoding="UTF-8" indent="yes"/>
  <xsl:template match="/">
    <html lang="en">
      <head>
        <title>AION 2 Patch Hub — XML Sitemap</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <style>
          body {
            font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, sans-serif;
            background-color: #070a12;
            color: #e2e8f0;
            margin: 0;
            padding: 30px 20px;
          }
          .container {
            max-width: 1000px;
            margin: 0 auto;
            background: #0f1523;
            border: 1px solid #1e2942;
            border-radius: 12px;
            padding: 24px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.5);
          }
          h1 {
            color: #ffffff;
            font-size: 24px;
            margin: 0 0 8px 0;
            display: flex;
            align-items: center;
            gap: 10px;
          }
          .badge {
            display: inline-block;
            background: rgba(0, 210, 255, 0.15);
            color: #00d2ff;
            border: 1px solid rgba(0, 210, 255, 0.35);
            font-size: 11px;
            font-weight: 700;
            text-transform: uppercase;
            padding: 3px 8px;
            border-radius: 6px;
          }
          p.desc {
            color: #94a3b8;
            font-size: 14px;
            line-height: 1.5;
            margin: 0 0 20px 0;
          }
          .stats {
            background: #090d17;
            border: 1px solid #1e2942;
            border-radius: 8px;
            padding: 12px 16px;
            font-size: 13px;
            color: #cbd5e1;
            margin-bottom: 20px;
          }
          table {
            width: 100%;
            border-collapse: collapse;
            font-size: 13px;
          }
          th {
            background-color: #161e31;
            color: #94a3b8;
            font-weight: 600;
            text-transform: uppercase;
            letter-spacing: 0.05em;
            text-align: left;
            padding: 10px 12px;
            border-bottom: 1px solid #1e2942;
          }
          td {
            padding: 12px;
            border-bottom: 1px solid #162035;
          }
          tr:hover td {
            background-color: rgba(0, 210, 255, 0.04);
          }
          a {
            color: #00d2ff;
            text-decoration: none;
            word-break: break-all;
          }
          a:hover {
            text-decoration: underline;
          }
          .priority-tag {
            font-weight: 700;
            color: #e5b84b;
          }
          .footer {
            margin-top: 24px;
            padding-top: 16px;
            border-top: 1px solid #1e2942;
            font-size: 12px;
            color: #64748b;
            display: flex;
            justify-content: space-between;
          }
        </style>
      </head>
      <body>
        <div class="container">
          <h1>
            <span>AION 2 Patch Hub</span>
            <span class="badge">XML Sitemap</span>
          </h1>
          <p class="desc">
            This XML Sitemap is generated according to standard XML Sitemap protocols (sitemaps.org 0.9). It allows search engine crawlers like Google and Bing to discover and index all live patch notes and archived updates.
          </p>

          <div class="stats">
            <strong>Total URLs Tracked:</strong> <xsl:value-of select="count(sitemap:urlset/sitemap:url)"/>
          </div>

          <table>
            <thead>
              <tr>
                <th>URL</th>
                <th style="width: 90px; text-align: center;">Priority</th>
                <th style="width: 120px; text-align: center;">Change Freq</th>
                <th style="width: 140px; text-align: right;">Last Modified</th>
              </tr>
            </thead>
            <tbody>
              <xsl:for-each select="sitemap:urlset/sitemap:url">
                <tr>
                  <td>
                    <xsl:variable name="itemURL">
                      <xsl:value-of select="sitemap:loc"/>
                    </xsl:variable>
                    <a href="{$itemURL}">
                      <xsl:value-of select="sitemap:loc"/>
                    </a>
                  </td>
                  <td style="text-align: center;" class="priority-tag">
                    <xsl:value-of select="sitemap:priority"/>
                  </td>
                  <td style="text-align: center; color: #94a3b8;">
                    <xsl:value-of select="sitemap:changefreq"/>
                  </td>
                  <td style="text-align: right; color: #cbd5e1;">
                    <xsl:value-of select="sitemap:lastmod"/>
                  </td>
                </tr>
              </xsl:for-each>
            </tbody>
          </table>

          <div class="footer">
            <span>AionPatch.github.io</span>
            <span>Valid XML Sitemap 0.9</span>
          </div>
        </div>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
